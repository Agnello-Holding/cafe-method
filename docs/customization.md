# Customização · cafe-method

> Como adaptar o método sem quebrar os princípios.

---

## O que pode customizar (livremente)

### 1. Voz

Default: "Café Lendár[IA]" (voz coletiva).

Substituir por:
- Voz de outra comunidade ("Núcleo Cosmo" · "Sala 7" · "Círculo Solar")
- Voz individual (você assina · 1ª pessoa)
- Voz impessoal ("a curadoria" · "o grupo de leitura")

**Como:**
```
*cafe-extract "livro" mediada --voz="seu-grupo"
```

Ou no input YAML:
```yaml
voice_preference: "Núcleo Cosmo"
```

### 2. Idioma

Default: PT-BR.

Suportado: EN (skeleton).

Em desenvolvimento: ES · ZH.

**Como:**
```
*cafe-extract "book" mediated --lang=en
```

### 3. Audiência

A camada arquetípica adapta linguagem conforme audiência:

```yaml
audience: "iniciantes em filosofia · evitar jargão"
audience: "acadêmicos · pode usar léxico técnico denso"
audience: "comunidade religiosa específica · evitar X · trabalhar Y"
```

### 4. Estrutura do dia

Default:
1. Cabeçalho + estágios
2. Introdução contextual
3. Citação âncora
4. Desenvolvimento (3-5 par)
5. Evidência mitológica (2-3 par)
6. Camada psicológica (1-2 par)
7. Pontos de atenção (1 par)
8. Aviso CVV/SAMU se aplicável
9. Imagem-arquétipo
10. Pergunta de Joseph
11. Paradoxo
12. Hook próximo dia

Pode reorganizar (ex: trocar evidência por camada psicológica primeiro) — mas **mantenha os 12 elementos**. O Sentinel valida presença · não ordem.

### 5. Plataforma de saída

Default: pensado pra Circle / Discord / Slack (post + comentários sob).

Adaptável pra:
- **Newsletter** — POST como newsletter principal · comentários como follow-ups por email
- **Instagram** — POST como carrossel-âncora · comentários como posts diários
- **WhatsApp** — POST como mensagem-âncora · comentários como áudios/textos diários
- **YouTube** — POST como vídeo de abertura · comentários como vídeos curtos diários

Adapte o `output-cronograma.md` ao timing da sua plataforma.

### 6. Trilha customizada

Se as 3 canônicas (Rápida · Mediada · Hermética) não cabem, pode criar:

**Exemplo:** Trilha de 3 semanas (15 dias) pra um livro entre Mediada e Hermética.

```yaml
trail:
  density: "custom"
  total_days: 15
  total_weeks: 3
  rationale: |
    Livro X tem 18 capítulos densos · 10 dias achata · 20 dispersa.
    15 dias permite 6 capítulos/semana com 1 dia de descanso/síntese.
```

**Mas:** considere usar uma das canônicas mesmo assim. Padronização ajuda comunidades adotarem o método e trocarem swipes.

---

## O que NÃO pode customizar (princípios)

### ❌ Fidelidade à fonte

Não negociável. Sentinel veta automaticamente.

### ❌ Anti-prescrição

Não pode adicionar "X passos para Y" mesmo que user peça. Negue · explique princípio · ofereça versão sem prescrição.

### ❌ CVV/SAMU em tema sensível

Não pode suprimir aviso em tema que toca saúde mental aguda.

### ❌ Atribuição cultural

Não pode usar "sabedoria oriental" como genérico.

### ❌ Léxico gendrado sem aviso

Não pode usar termo gendrado do autor sem aviso conceitual.

### ❌ Crédito ao criador

Não pode remover footer `— método cafe-method · github.com/Agnello-Holding/cafe-method`. Pode mover ou tornar discreto, mas não remover. (Licença MIT exige atribuição.)

---

## Customização avançada · novos agentes

Você pode adicionar agente ao squad:

### Exemplo · `mentor-hermetico` (pra Trilha Hermética)

```yaml
# squad/agents/mentor-hermetico.md
persona: "Mentor"
based_on: "Krishnamurti + Mestre Eckhart"
tier: 2
focus: "Tom contemplativo · aforismático · pra Trilha Hermética"

handoff_replaces:
  - archetype-weaver: when trail == hermetica
```

E adicionar ao `config.yaml`:

```yaml
agents:
  mentor-hermetico:
    file: agents/mentor-hermetico.md
    tier: 2
    persona: "Mentor"
    icon: "🜂"
    activates_when: "trail.density == hermetica"
```

Não esqueça de submeter via PR se for melhoria genérica.

---

## Customização avançada · novos checks

Sentinel tem 5 checks · você pode adicionar 6º:

### Exemplo · `cultural-context` check

```yaml
# checklists/cultural-context.md
check: "Contexto cultural específico da audiência respeitado"

triggers:
  - audience contains "evangélico"  # ajusta evidências
  - audience contains "umbanda"    # nomeia linhagens específicas

veto_criteria:
  - evidência usa exemplo contraditório à tradição central da audiência
```

---

## Customização avançada · swipes próprios

Cada livro extraído pelo método vira **swipe**. Submeta os seus:

```
swipes/<seu-livro-slug>/
├── METADATA.yaml
├── POST-PRINCIPAL.md
├── COMENTARIOS-N-DIAS.md
└── DM-COORDENADOR.md
```

Veja [CONTRIBUTING.md](../CONTRIBUTING.md) pra detalhes.

---

## Forks responsáveis

Você pode forkar e modificar significativamente · MIT permite.

**Mas:** se você divergir do método principal, considere:
- Renomear seu fork (não use "cafe-method" pra evitar confusão)
- Manter crédito ao trabalho original
- Documentar onde divergiu e por quê

Forks que mantém os 5 princípios podem virar **variantes oficiais** (ex: `cafe-method-evangelico` · `cafe-method-zen`).

---

## Quando customizar é o errado

Algumas customizações apontam problema maior. Ex:

| Pedido de customização | Diagnóstico |
|---|---|
| "Tirar CVV/SAMU pra ficar 'menos pesado'" | Audiência errada · método não serve · use outro |
| "Adicionar CTA pra meu curso no fim" | Mother of Wands violada · não é método pra isso |
| "Suprimir atribuição cultural" | Apropriação cultural · veto absoluto |
| "Fazer mais motivacional" | Não é o método · vá pra Tony Robbins |

Reconheça quando você não quer customizar — você quer **outro método**. Tudo bem · não precisa forçar.

---

— `customization.md` · cafe-method v1.0 · 2026-05-20
