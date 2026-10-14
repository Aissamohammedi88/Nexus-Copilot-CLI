markdown

# Nexus Copilot CLI

> *Ce qui est écrit en dur ne se brise pas.*

Copilot CLI **souverain**, écrit en Rust. Un binaire autonome qui route chaque
requête vers le meilleur modèle IA disponible, localement ou en cascade.

**Ce que ça résout :**

Les copilotes actuels ont trois défauts structurels : ils dépendent d'un cloud
tiers, ils envoient ton code à des serveurs distants, ils t'enferment dans un
modèle unique. Nexus Copilot CLI inverse ces trois rapports.

- **Local-first.** Le binaire tourne sans réseau. Les modèles locaux
  (llama.cpp, vLLM, MLX) sont le défaut. Le cloud est opt-in.
- **Multi-modèle.** 559 modèles adressables. Un routeur pondéré sélectionne
  l'agent optimal selon la tâche, le coût, la latence, la confidentialité.
- **Souverain.** Licence NEXUS-OPEN-2.0. Aucune télémétrie. Aucun compte requis.
  Aucun appel réseau sortant non déclaré.

**Ce que ça n'est pas :**

Ce n'est pas un wrapper autour d'un chatbot. Ce n'est pas une extension d'IDE.
Ce n'est pas un SaaS déguisé. C'est un outil Unix qui fait une chose : router
ta demande vers le meilleur modèle, exécuter la réponse, te rendre le résultat.

English :
markdown

# Nexus Copilot CLI

> *What is written in stone does not break.*

A **sovereign** CLI copilot, written in Rust. A standalone binary that routes
each request to the best available AI model — locally or in cascade.

**The problem it solves:**

Today's copilots share three structural flaws: they depend on a third-party
cloud, they ship your code to remote servers, they lock you into one model.
Nexus Copilot CLI inverts all three.

- **Local-first.** The binary runs without a network. Local models
  (llama.cpp, vLLM, MLX) are the default. Cloud is opt-in.
- **Multi-model.** 559 addressable models. A weighted router picks the optimal
  agent by task, cost, latency, and privacy requirements.
- **Sovereign.** NEXUS-OPEN-2.0 license. Zero telemetry. No account required.
  No undeclared outbound network calls.

**What it is not:**

Not a chatbot wrapper. Not an IDE extension. Not a SaaS in disguise. It's a
Unix tool that does one thing: route your request to the best model, execute
the response, return the result.

3. Usage Documentation (vraie doc technique, senior)

Français :
markdown

## Utilisation

### Installation

```bash
# Depuis les sources
git clone https://github.com/Aissamohammedi88/Nexus-Copilot-CLI.git
cd Nexus-Copilot-CLI
cargo build --release
install -m 755 target/release/nexus /usr/local/bin/nexus

# Vérification
nexus --version
nexus doctor        # Diagnostique : backends détectés, modèles accessibles
