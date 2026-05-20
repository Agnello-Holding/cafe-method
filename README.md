# cafe-method

> **Squad AIOX para coordenadores editoriais de comunidades de leitura · gera bundle de publicação (POST PRINCIPAL + comentários sequenciais + cronograma + DM) a partir de qualquer livro denso.**
>
> 🌍 [English](README.en.md) | **Português**

[![Licença: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![AIOX Compatible](https://img.shields.io/badge/AIOX-compatible-orange.svg)](https://github.com/SynkraAI/aiox-core)
[![Squad Type](https://img.shields.io/badge/type-squad-blue.svg)](squad/)
[![Status](https://img.shields.io/badge/status-v1.0-green.svg)](CHANGELOG.md)

---

## 🤝 Repo paralelo · JARBAS-method

> Existe um **repo irmão** com função complementar:
>
> 📘 **[JARBAS-method](https://github.com/Agnello-Holding/JARBAS-method)** — para o **leitor individual** (aluno do clube) aprofundar conhecimento num livro · gera dossiê estratégico pessoal de 8 camadas cognitivas (Mapa · Conceitos · Modo-Pensar · Modo-Operar · Comparações · Diálogos · Notas · Arquetípica).
>
> 📕 **`cafe-method` (este)** — para o **coordenador editorial** publicar a trilha pra comunidade · gera bundle de publicação (POST · comentários · cronograma · DM).
>
> Os dois operam o mesmo livro com **lentes diferentes**. Aluno extrai dossiê pessoal denso. Feldman compõe versão pública pra comunidade. **Bridge orgânico**: dossiês de alunos podem alimentar o trabalho do coordenador.

---

## O que é

O `cafe-method` é um **squad AIOX** que transforma qualquer livro denso em uma **trilha de leitura mediada**: um post principal (panorama do livro + estrutura do clube) e N comentários sequenciais (cada um um capítulo denso, fiel à fonte, com camada arquetípica). Saída pronta pra publicar em comunidade — Circle, Discord, Slack, fórum, grupo de leitura, newsletter.

Nasceu da prática real do **Café Lendár[IA]** (Comunidade Lendária · AIOX) atravessando *O Herói de Mil Faces* de Joseph Campbell. O método foi destilado, generalizado e empacotado como squad plug-and-play.

**Para quem é:** pessoas interessadas em extrair o que realmente importa dos livros densos — não resumo, não TLDR, não dica motivacional. **Tradução fiel da fonte com camada arquetípica acionável**.

---

## Por que existe

A maior parte dos resumos de livros faz duas coisas erradas:

1. **Achata o livro** — vira lista de bullets motivacionais que poderia ser de qualquer obra
2. **Insere a voz do resumidor** — perde Campbell, ganha o resumidor

O `cafe-method` faz o oposto:

- **Fidelidade à fonte** — usa as referências, exemplos e citações que o autor de fato usa
- **Densidade real** — 1.300-1.800 palavras por dia, não 300
- **Camada arquetípica** — imagem-arquétipo + pergunta + paradoxo por dia (sem prescrever)
- **Cadência sustentável** — 3 trilhas de densidade (1 sem · 2 sem · 4 sem) conforme o livro pede
- **Sem prescrição** — devolve pergunta, não receita
- **Aviso de segurança** — CVV/SAMU quando o tema toca saúde mental aguda

---

## Como funciona

```
você passa um livro → squad gera pacote pronto pra publicar

📚 livro denso
  ↓
🗺️  Cartographer mapeia estrutura (capítulos, partes, densidade)
  ↓
📚 Scholar extrai cada dia com fidelidade à fonte
  ↓
🌀 Weaver tece camada arquetípica (imagem, pergunta, paradoxo)
  ↓
🛡️  Sentinel valida qualidade (5 checks)
  ↓
🧠 Joseph compõe bundle final
  ↓
📦 outputs/
   ├── POST-PRINCIPAL.md (panorama + estrutura do clube)
   ├── COMENTARIOS-N-DIAS.md (capítulos densos sequenciais)
   ├── DM-COORDENADOR.md (template pra quem vai publicar)
   └── CRONOGRAMA.md (sugestão de quando soltar cada peça)
```

---

## Quick start (5 minutos)

**Já tem AIOX-core instalado?** Pule pro [INSTALL.md](INSTALL.md).

**Não tem AIOX?** Pule pro [QUICKSTART.md](QUICKSTART.md) e use a versão prompt-only (cola em qualquer LLM).

```bash
# Instalação rápida no AIOX:
cd seu-projeto-aiox/squads/
git clone https://github.com/Agnello-Holding/cafe-method.git
cd seu-projeto-aiox/
npm run sync:ide
```

Depois:
```
@joseph
*cafe-extract "Marco Aurélio · Meditações" mediada
```

---

## Documentação

| Doc | Pra que serve |
|---|---|
| [QUICKSTART.md](QUICKSTART.md) | Primeiro extract em 5 minutos (qualquer LLM) |
| [INSTALL.md](INSTALL.md) | Instalação por contexto (AIOX · Codex · Claude · ChatGPT) |
| [docs/commands.md](docs/commands.md) | Manual de comandos `*joseph-*` |
| [docs/manifesto.md](docs/manifesto.md) | Por que existe · filosofia |
| [docs/filosofia.md](docs/filosofia.md) | Mother of Wands · sem prescrição · CVV |
| [docs/density-trails.md](docs/density-trails.md) | Trilha Rápida · Mediada · Hermética |
| [docs/tutorial-first-book.md](docs/tutorial-first-book.md) | Passo-a-passo do primeiro livro |
| [docs/customization.md](docs/customization.md) | Voz · idioma · tom · audiência |
| [squad/README.md](squad/README.md) | Documentação técnica do squad |

---

## O squad

5 agentes em 3 tiers · arquitetura AIOX canônica.

| Tier | Agent | Persona | Função |
|:--:|---|---|---|
| **0** | `joseph-chief` | 🧠 Joseph | Orquestração · triage · pipeline completo |
| **1** | `structure-mapper` | 🗺️ Cartographer | Mapeia estrutura do livro · escolhe densidade |
| **1** | `source-extractor` | 📚 Scholar | Resumo denso fiel à fonte · citações · evidência |
| **2** | `archetype-weaver` | 🌀 Weaver | Imagens-arquétipo · perguntas · paradoxos · camada psíquica |
| **2** | `quality-warden` | 🛡️ Sentinel | Quality gate · fidelidade · CVV/SAMU · sem prescrição |

Detalhes em [squad/README.md](squad/README.md).

---

## Swipes (exemplos prontos)

Biblioteca pública de extractions geradas pelo método:

| Livro | Autor | Trilha | Link |
|---|---|---|---|
| O Herói de Mil Faces | Joseph Campbell | Mediada (10 dias) | [swipes/campbell-o-heroi-de-mil-faces/](swipes/campbell-o-heroi-de-mil-faces/) |

_Contribua com seu próprio swipe via Pull Request — veja [CONTRIBUTING.md](CONTRIBUTING.md)._

---

## Compatibilidade

| Ferramenta | Suporte | Como usar |
|---|---|---|
| **AIOX-core (Synkra)** | ⭐ Nativo · primeira classe | Squad em `squads/cafe-method/` |
| **Codex CLI** | ✅ Via skills geradas pelo AIOX | `/skills` → `aiox-cafe-*` |
| **Claude Code** | ✅ Via squad agents | `/AIOX:agents:joseph-chief` |
| **Claude.ai web** | ✅ Via prompt-only | Cola [prompts/cafe-method-pt.md](prompts/cafe-method-pt.md) |
| **ChatGPT** | ✅ Via prompt-only | Cola [prompts/cafe-method-pt.md](prompts/cafe-method-pt.md) |
| **Gemini · Cursor · outros** | ✅ Via prompt-only | Cola [prompts/cafe-method-pt.md](prompts/cafe-method-pt.md) |

---

## Filosofia em 5 linhas

1. **Fidelidade à fonte** — não inventamos citações, não achatamos o autor
2. **Densidade respeita o livro** — 1 semana pra Holiday · 2 pra Campbell · 4 pra Nietzsche
3. **Camada arquetípica não prescritiva** — devolve pergunta, não receita
4. **Mother of Wands** — entrega o método inteiro · não pede aprovação
5. **Segurança em saúde mental** — CVV (188) e SAMU (192) sempre presentes quando o tema pesar

---

## Contribuir

Bem-vindo. Veja [CONTRIBUTING.md](CONTRIBUTING.md).

Formas de contribuir:
- Submeter um **swipe** novo (extração de um livro que você fez seguindo o método)
- Sugerir melhorias nos agentes/tasks
- Traduzir docs pra outros idiomas
- Reportar onde o método falha (mais útil que onde funciona)

---

## Licença

[MIT](LICENSE) · use livremente · atribua a fonte.

---

*Concebido e desenvolvido por **[Jhonas Agnello](https://github.com/jhonasagnello)** · Holding AGNELLO · Brasil · 2026*
*Método derivado da prática real do **Café Lendár[IA]** (Comunidade Lendária · AIOX)*
*Inspirações honestas em [AUTHORS.md](AUTHORS.md)*
