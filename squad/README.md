# Squad · cafe-method

> Documentação técnica do squad AIOX. Para visão geral do projeto, veja [`../README.md`](../README.md).

**Version:** 1.0.0 | **Created:** 2026-05-20 | **Agents:** 5 (3 tiers)

---

## Arquitetura

```
                     🧠 Joseph (joseph-chief)
                       Tier 0 · Orchestration
                              │
              ┌───────────────┼───────────────┐
              │                               │
         ┌────┴────┐                     ┌────┴────┐
         │  🗺️ Cart  │                     │  📚 Schl │
         │  Tier 1  │ ───── handoff ────▶ │  Tier 1  │
         └─────────┘                     └────┬────┘
                                              │
                                         ┌────┴────┐
                                         │  🌀 Weav │
                                         │  Tier 2  │
                                         └────┬────┘
                                              │
                                         ┌────┴────┐
                                         │  🛡️ Sent │
                                         │  Tier 2  │
                                         └────┬────┘
                                              │
                                       (back to Joseph
                                        for final compose)
```

## Agentes

| Tier | ID | Persona | Based On | Foco |
|:--:|---|---|---|---|
| 0 | `joseph-chief` | 🧠 Joseph | Campbell + Jung | Orquestração · triage · composição final |
| 1 | `structure-mapper` | 🗺️ Cartographer | Propp + Eliade | Mapeia estrutura · classifica densidade |
| 1 | `source-extractor` | 📚 Scholar | Auerbach + Frye | Extrai conteúdo denso · fidelidade citacional |
| 2 | `archetype-weaver` | 🌀 Weaver | Jung + Hillman | Camada arquetípica · pergunta · paradoxo |
| 2 | `quality-warden` | 🛡️ Sentinel | Filtro Alan | Quality gate · veto autoridade |

## Quick start

### Ativação do orquestrador

```
@joseph
```

Ou via AIOX:
```
/AIOX:agents:joseph-chief
```

### Acesso direto aos especialistas

```
@cartographer        # mapear estrutura
@scholar             # extrair conteúdo
@weaver              # tecer arquetípico
@sentinel            # validar qualidade
```

### Comando principal

```
*cafe-extract "Marco Aurélio · Meditações" mediada
```

Roda o workflow completo (`workflows/full-extract.yaml`).

## Estrutura do diretório

```
squad/cafe-method/
├── config.yaml                       # Configuração + Tiers + Handoff Matrix
├── README.md                          # Este arquivo
├── CHANGELOG.md
├── agents/
│   ├── joseph-chief.md               # Tier 0 · orquestrador
│   ├── structure-mapper.md           # Tier 1 · mapeia estrutura
│   ├── source-extractor.md           # Tier 1 · extrai conteúdo
│   ├── archetype-weaver.md           # Tier 2 · camada arquetípica
│   └── quality-warden.md             # Tier 2 · quality gate
├── tasks/
│   ├── map-book-structure.md         # input → estrutura mapeada
│   ├── extract-day-content.md        # estrutura → 1 dia denso
│   ├── weave-archetypal-layer.md     # 1 dia → 1 dia com arquetípico
│   ├── quality-check.md              # 1 dia → PASS | VETO
│   └── compose-publication-bundle.md # tudo → POST + comentários + cronograma
├── workflows/
│   ├── full-extract.yaml             # pipeline completo
│   └── single-day.yaml               # 1 dia isolado
├── templates/
│   ├── input-book.md                 # formulário do livro
│   ├── output-post-principal.md      # template POST
│   ├── output-comment-day.md         # template comentário
│   └── output-cronograma.md          # template cronograma
├── checklists/
│   ├── quality-gate.md               # 5 checks principais
│   ├── source-fidelity.md            # citações
│   └── safety-cvv.md                 # saúde mental
├── data/
│   ├── density-trails.yaml           # Rápida / Mediada / Hermética
│   ├── archetypes-library.yaml       # biblioteca de imagens-arquétipo
│   └── psychological-bridges.yaml    # Jung/Freud/Adler/Schopenhauer
└── scripts/                           # (vazio · uso futuro · ex: validadores)
```

## Workflow padrão

```yaml
# workflows/full-extract.yaml (simplificado)
steps:
  - agent: structure-mapper
    input: book metadata + density choice
    output: book-structure-map.yaml

  - agent: source-extractor
    input: book-structure-map.yaml
    output: dense-day-content.md (× N days)
    loop: per day

  - agent: archetype-weaver
    input: dense-day-content.md
    output: dense-day-content-with-archetype.md
    loop: per day

  - agent: quality-warden
    input: dense-day-content-with-archetype.md
    output: PASS | VETO + report
    on_veto: route back to source-extractor or archetype-weaver

  - agent: joseph-chief
    action: compose final bundle
    output: POST + COMENTARIOS + CRONOGRAMA + DM-COORDENADOR
```

## Quality gates (Sentinel · veto autoridade)

Antes de fechar qualquer output, Sentinel verifica 5 checks:

1. **Fidelidade citacional** — toda citação tem fonte verificável; o que não tem, foi parafraseado com honestidade
2. **Anti-prescrição** — sem "destrave", sem receita, sempre devolve pergunta
3. **CVV/SAMU** — presente em temas de saúde mental aguda
4. **Atribuição cultural** — linhagens nomeadas; sem secularizar tradições
5. **Léxico gendrado** — quando presente (Campbell 1949), traduzido com aviso conceitual

Sentinel **tem autoridade de veto**. Output que falha não passa pra próximo estágio.

## Integração com AIOX

Este squad é **Constitution-compliant** e respeita os 6 artigos:

| Artigo | Como o squad obedece |
|---|---|
| **I · CLI First** | Comandos `*joseph-*` funcionam via terminal AIOX |
| **II · Agent Authority** | Sentinel tem veto exclusivo · Joseph compõe exclusivo |
| **III · Story-Driven** | Stories podem ser geradas em `docs/stories/` |
| **IV · No Invention** | Fidelidade citacional é princípio · zero alucinação aceita |
| **V · Quality First** | Sentinel veta antes de fechar · 5 checks obrigatórios |
| **VI · Absolute Imports** | Tasks referenciam paths absolutos do squad |

## Customização

Veja [`../docs/customization.md`](../docs/customization.md) para:
- Trocar voz (Café Lendário → voz própria)
- Adicionar trilha de densidade nova
- Ajustar checks do Sentinel
- Customizar templates de output

## Próximos releases

Roadmap em [`../CHANGELOG.md`](../CHANGELOG.md). Sugestões em [issues](https://github.com/Agnello-Holding/cafe-method/issues).

---

— Squad `cafe-method` v1.0 · Jhonas Agnello · Holding AGNELLO · 2026
