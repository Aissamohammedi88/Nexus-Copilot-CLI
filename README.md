# Nexus Copilot CLI

> Ce qui est écrit en dur ne se brise pas.

Sovereign multi-model AI copilot for the terminal.
Written in Rust. Routes each task to the best of 559 models.
Zero cloud. Zero telemetry. Owned by you.

## Installation

```bash
git clone https://github.com/Aissamohammedi88/Nexus-Copilot-CLI.git
cd Nexus-Copilot-CLI
cargo build --release
./target/release/nexus
Nexus-Copilot-CLI/
├── .github/
│   └── workflows/
│       └── ci.yml
├── src/
│   ├── main.rs
│   ├── cli.rs
│   ├── router.rs
│   ├── agents/
│   └── backends/
├── Cargo.toml
├── Cargo.lock
├── .gitignore
├── README.md
├── LICENSE
└── docs/
    ├── ARCHITECTURE.md
    └── ROUTER.md
---

## 📋 Récapitulatif — Ce qu'il faut faire maintenant

| # | Action | Priorité |
|---|--------|----------|
| 1 | Créer une branche `backup/avant-nettoyage` | 🔴 Critique |
| 2 | Supprimer les binaires, DLL, EXE du repo | 🔴 Critique |
| 3 | Supprimer les notes perso (`*.txt`, `benchemark`) | 🔴 Critique |
| 4 | Créer un `.gitignore` propre | 🔴 Critique |
| 5 | Trancher : Python ou Rust ? | 🔴 Critique |
| 6 | Réécrire le README en cohérence | 🟠 Important |
| 7 | Créer une structure `src/` claire | 🟠 Important |
| 8 | Ajouter un workflow CI | 🟡 Utile |
| 9 | Ajouter un `CONTRIBUTING.md` | 🟡 Utile |
| 10 | Publier une release v0.1.0 | 🟢 Long terme |

---

## ⚠️ Avertissement honnête

**Ton dépôt actuel fait peur à un recruteur ou un contributeur.**
Un repo avec des DLL Windows, des `.exe`, des notes en vrac et un README qui ne correspond pas → **personne ne clique sur "Star"**.

Un repo propre, avec une structure claire, un README qui dit la vérité, et un `.gitignore` correct → **les gens commencent à contribuer**.

**La souveraineté, c'est aussi la propreté.**

---

## 🎯 Dis-moi

1. **Tu veux que je te génère le `README.md` complet** pour la version Rust ?
2. **Tu veux que je te fasse le `.gitignore` final** prêt à coller ?
3. **Tu veux que je te donne les commandes Git** pour nettoyer proprement ?
4. **Ou tu veux qu'on discute d'abord** de ce que ce dépôt doit vraiment être ?

Dis-moi. Et cette fois, on nettoie.
