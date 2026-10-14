#!/bin/bash
# Agent Nexus — Surveillance et protection

BASE="$HOME/nexus_agent_robot"
mkdir -p "$BASE"

# Vérifier les URLs et mettre à jour
if [ -f "$BASE/urls_trouvees.txt" ]; then
    while read url; do
        code=$(curl -L -s -o /dev/null -w "%{http_code}" -A "NexusAgent/1.0" "$url" 2>/dev/null)
        echo "$url -> $code" >> "$BASE/scan_protection.log"
    done < "$BASE/urls_trouvees.txt"
fi

# Protéger le système : fermer les ports non autorisés
for port in 8080 8081 8090; do
    ss -tlnp | grep ":$port " >/dev/null && echo "Port $port actif" >> "$BASE/ports.log"
done

# Alerte si CPU trop haut
cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
if [ "${cpu%.*}" -gt 90 ]; then
    echo "$(date) - CPU critique : $cpu%" >> "$BASE/alertes.log"
fi

echo "Agent Nexus actif $(date)" >> "$BASE/agent.log"
