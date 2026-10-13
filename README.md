# Nexus-Copilot-CLI
Nexus Copilot CLI does not depend on one AI. It does not depend on one company. It does not depend on one model.  It speaks to 559 models across every generation ever shipped, from GPT-2 to GPT-5, from Claude 1 to Claude 4.5, from Qwen 1 to Qwen 3, and everything in between — and it routes each task to the right agent, automatically, by default.  
# NEXUS SOVEREIGN TERMINAL

> *Ce qui est écrit en dur ne se brise pas.*

[![Version](https://img.shields.io/badge/version-2.0.0-purple)](#)
[![License](https://img.shields.io/badge/license-NEXUS--COMMERCIAL--39-red)](#)
[![Python](https://img.shields.io/badge/python-3.10%2B-blue)](#)
[![Backends](https://img.shields.io/badge/backends-20-green)](#)
[![Models](https://img.shields.io/badge/models-559-orange)](#)

---

## Manifeste

Le terminal n'est pas un outil. C'est un territoire.

Depuis cinquante ans, l'utilisateur loue son shell. Il emprunte ses commandes. Il dépend de binaires dont il ignore le contenu. Il exécute ce qu'il n'a pas écrit, sur des systèmes qu'il n'a pas bâtis, avec des droits qu'il n'a pas choisis.

**Nexus Sovereign Terminal inverse ce rapport.**

Ici, chaque commande est écrite. Chaque chemin est tracé. Chaque octet est connu. Le shell n'appelle pas le système — il **est** le système. Le filesystem n'est pas monté — il est **construit**. L'apt n'interroge pas de serveur — il **sait**.

Ce terminal ne demande rien à personne. Il ne dépend de rien. Il tient debout par lui-même.

C'est cela, la souveraineté : un objet dont on connaît chaque ligne, chaque décision, chaque conséquence.

---

## Ce que c'est

**Nexus Sovereign Terminal** est un copilot CLI souverain, avec un environnement Unix complet, écrit intégralement en Python, fonctionnant **entièrement en mémoire**. Aucun accès disque. Aucun accès réseau. Aucun appel système réel.

Il combine :

- **Shell bash** — 100+ commandes, pipelines, redirections, opérateurs `;` et `&&`
- **Filesystem FHS** — arborescence Unix complète depuis `/`
- **apt · snap · flatpak · systemd** — gestionnaires simulés
- **PPAs Ubuntu** — noyaux, drivers, toolchains
- **Python REPL** — interpréteur persistant
- **Gina** — assistant autonome intégré (mémoire, voix, intention)
- **Écoute vocale** — Whisper STT + espeak-ng TTS
- **Routeur 559 modèles** — sélection automatique par tâche
- **20 backends lourds** — PyTorch, JAX, TensorRT, vLLM, DeepSpeed, Megatron, FlashAttention, bitsandbytes, ONNX, etc.

---

## Les 559 modèles

Nexus parle à **chaque génération** de chaque famille majeure :

| Famille | Générations | Compte |
|---------|-------------|--------|
| OpenAI GPT | GPT-2 → GPT-5, o1, o3, o4 | 42 |
| Anthropic Claude | Claude 1 → 4.5 (Haiku, Sonnet, Opus) | 31 |
| Google Gemini | 1 → 3 (Nano, Flash, Pro, Ultra) | 28 |
| Meta Llama | 1 → 4 (7B → 405B) | 34 |
| Alibaba Qwen | 1 → 3 (Coder, VL, Math, Audio) | 38 |
| Mistral | 7B → Large, Codestral, Mixtral | 22 |
| DeepSeek | V1 → V3, R1 | 19 |
| xAI Grok | 1 → 4 | 11 |
| Microsoft Phi | 1 → 4 | 12 |
| Cohere Command | R, R+, R7B, Embed, Rerank | 14 |
| Autres | 20+ familles open source | 308 |
| **Total** | | **559** |

**Le routeur choisit pour toi, par défaut, selon la tâche.**

---

## Les 20 backends lourds

Ce n'est pas un wrapper Ollama. C'est une forge.

| Backend | Rôle | Natif |
|---------|------|-------|
| **PyTorch** | Entraînement + inférence de référence | ✓ |
| **JAX** | XLA, TPU, parallélisme sharded | ✓ |
| **TensorRT-LLM** | Optimisation NVIDIA INT8/FP8 | ✓ |
| **vLLM** | PagedAttention, continuous batching | ✓ |
| **DeepSpeed** | ZeRO-3, offload CPU/NVMe | ✓ |
| **Megatron-LM** | Parallélisme tenseur + pipeline | ✓ |
| **FlashAttention** | Attention mémoire-efficace 2-4× | ✓ |
| **xFormers** | Attention optimisée Meta | ✓ |
| **bitsandbytes** | Quantification 8-bit / 4-bit | ✓ |
| **GPTQ / AWQ** | Quantification post-entraînement | ✓ |
| **ONNX Runtime** | Portabilité multi-hardware | ✓ |
| **Triton Inference** | Serveur NVIDIA | ✓ |
| **llama.cpp** | CPU + Metal + CUDA | ✓ |
| **MLX** | Apple M-series | ✓ |
| **ROCm** | AMD GPU | ✓ |
| **oneAPI** | Intel GPU | ✓ |
| **CUDA** | NVIDIA | ✓ |
| **XLA / TPU** | Google Cloud | ✓ |
| **Trainium / Inferentia** | AWS | ✓ |
| **NCCL** | Communication multi-GPU | ✓ |

---

## Le routeur

Tu ne choisis jamais un modèle. Nexus choisit pour toi selon :

1. **Type de tâche** — code, math, écriture, raisonnement, vision, audio
2. **Complexité** — tokens, profondeur, outils requis
3. **Budget** — plafond $/1K tokens
4. **Latence** — temps réel vs batch
5. **Confidentialité** — local vs cloud
6. **Contexte** — prompt court vs document 200K+
7. **Disponibilité** — rate limits, quotas, pannes

### Modes de routage

| Mode | Comportement |
|------|--------------|
| **Weighted** (défaut) | Score les 559, prend le meilleur |
| **Strict** | Utilise le primaire configuré |
| **Consensus** | Lance N modèles, vote |
| **Fastest** | Course — premier gagne |
| **Cascade** | Pas cher d'abord, escalade |

---

## Installation

```bash
git clone https://github.com/Aissamohammedi88/nexus-sovereign-terminal.git
cd nexus-sovereign-terminal
python3 -m nexus_sovereign
