# Manual de Comandos · cafe-method

> Todos os comandos `*cafe-*` em um lugar.

---

## Comando principal

### `*cafe-extract <livro> [densidade]`

**O que faz:** Pipeline completo · do livro bruto ao bundle de publicação.

**Args:**
- `<livro>` — obrigatório · *"Autor · Título"* (entre aspas se tem espaços)
- `[densidade]` — opcional · `rapida` | `mediada` | `hermetica` | `auto`

**Exemplo:**
```
*cafe-extract "Marco Aurélio · Meditações" mediada
```

**Saída (em `outputs/{book-slug}/{date}/`):**
- `POST-PRINCIPAL.md` (~800 palavras)
- `COMENTARIOS-N-DIAS.md` (1.300-1.800 palavras/dia × N dias)
- `CRONOGRAMA.md`
- `DM-COORDENADOR.md`

**Tempo estimado:** 30-60 min (depende de N de dias).

---

## Comandos parciais

### `*cafe-map <livro>`

**O que faz:** Só mapeia estrutura do livro · não extrai conteúdo.

**Quando usar:**
- Quer ver como o livro vai ser dividido antes de comprometer com extração completa
- Quer ajustar a densidade antes de prosseguir
- Quer entregar só o map pra outro agente fazer a extração

**Exemplo:**
```
*cafe-map "Nietzsche · Assim Falou Zaratustra"
```

**Saída:** `book-structure-map.yaml` em `outputs/{book-slug}/`.

**Tempo:** 5-10 min.

---

### `*cafe-day <N>`

**O que faz:** Gera só o dia N. Assume `book-structure-map.yaml` já existe.

**Quando usar:**
- Refazer um dia específico (depois de feedback do coordenador)
- LLM com limite de contexto · gerar dia por dia
- Publicar progressivamente · não em lote
- Testar antes de comprometer com pipeline completo

**Exemplo:**
```
*cafe-day 3
```

**Saída:** `outputs/{book-slug}/dias/dia-03.md`.

**Tempo:** 15-20 min.

---

### `*cafe-quality <arquivo>`

**O que faz:** Roda quality gate (5 checks do Sentinel) em arquivo já existente.

**Quando usar:**
- Validar output editado manualmente
- Auditar swipe contribuído pela comunidade
- Verificar se mudanças mantém qualidade

**Exemplo:**
```
*cafe-quality outputs/campbell/dias/dia-05.md
```

**Saída:** Quality report inline + veredito PASS / VETO.

**Tempo:** 2-3 min.

---

### `*cafe-swipe <slug>`

**O que faz:** Lista swipes prontos · ou exibe swipe específico.

**Sem args:** Lista todos os swipes disponíveis.

**Exemplo:**
```
*cafe-swipe                          # lista tudo
*cafe-swipe campbell                 # mostra Campbell completo
*cafe-swipe campbell day 4           # mostra só Dia 4 do Campbell
```

---

### `*cafe-help`

**O que faz:** Manual rápido (esta página em forma de tabela).

```
*cafe-help
```

---

## Shortcuts de agente

Cada agente do squad pode ser ativado diretamente:

| Shortcut | Agente | Função |
|---|---|---|
| `@joseph` | joseph-chief | Orquestrador · pipeline completo |
| `@cartographer` | structure-mapper | Mapear estrutura do livro |
| `@scholar` | source-extractor | Extrair conteúdo denso de 1 dia |
| `@weaver` | archetype-weaver | Tecer camada arquetípica de 1 dia |
| `@sentinel` | quality-warden | Quality gate |

### Quando usar shortcut em vez de comando

- **Shortcut:** quando você quer **diálogo com persona específica** (ex: discutir mapa com Cartographer antes de extrair)
- **Comando:** quando você quer **execução de workflow**

---

## Padrões de uso

### Padrão 1 · Extract completo (mais comum)

```
@joseph
*cafe-extract "Brené Brown · A Coragem de Ser Imperfeito" mediada
```

Roda pipeline completo · entrega bundle.

### Padrão 2 · Mapeamento exploratório antes

```
@cartographer
*cafe-map "Heidegger · Ser e Tempo"
# revisa mapa · ajusta densidade se quiser
@joseph
*cafe-extract  # continua de onde Cartographer parou
```

### Padrão 3 · Dia a dia (limite de contexto LLM)

```
*cafe-map "Espinosa · Ética"
# usuário aprova mapa
*cafe-day 1   # gera dia 1
# revisa
*cafe-day 2   # gera dia 2
# ...
*cafe-day 20  # gera dia 20 (trilha hermética)
```

### Padrão 4 · Refazer dia com feedback

```
*cafe-day 5  # gerou
# coordenador deu feedback: "muito acadêmico"
@scholar
*cafe-day 5 com "tom mais leve · audiência iniciante"
```

### Padrão 5 · Auditoria de swipe externo

```
@sentinel
*cafe-quality outros-swipes/marco-aurelio-dia-7.md
```

---

## Argumentos especiais

### Densidade `auto`

```
*cafe-extract "Algum livro" auto
```

Delega a escolha ao Cartographer. Use quando você não sabe que trilha cabe.

### Slug customizado

```
*cafe-extract "livro" mediada --slug=meu-clube-julho
```

Customiza nome da pasta de output (default: gerado do título).

### Voz custom

```
*cafe-extract "livro" --voz="Núcleo Cosmo"
```

Substitui "Café Lendário" pela voz que o coordenador escolher.

### Linguagem

```
*cafe-extract "livro" --lang=en
```

Gera em inglês em vez de PT-BR. Hotlines de saúde mental adaptadas.

---

## Exit / Help

```
*exit              # sai da persona Joseph (volta ao agente padrão)
*cafe-help       # este manual
*cafe-version    # mostra versão do método
```

---

## Atalhos via terminal (AIOX-core)

Quando instalado via AIOX, os comandos funcionam direto no terminal:

```bash
# Via AIOX CLI
aiox squad invoke cafe-method:joseph-chief
aiox skill run aiox-cafe-extract --book "Marco Aurélio · Meditações"

# Via Codex CLI (após sync:skills:codex)
codex /skills aiox-cafe-chief

# Via Claude Code
# (já tem skills nativas após instalação · usa @joseph diretamente)
```

Detalhes em [`installation/`](installation/).

---

## FAQ rápido

**P: Posso rodar pipeline completo sem confirmar mapa?**
R: Sim, mas Joseph vai pedir confirmação implícita. Se o livro for desconhecido, ele pergunta.

**P: O que acontece se Sentinel vetar?**
R: Output é roteado de volta ao agente apropriado (Scholar ou Weaver) com instrução específica. Max 2 retries por dia · depois escala pra user.

**P: Posso editar o output depois?**
R: Pode. Mas se editar muito, rode `*cafe-quality` no resultado pra garantir que ainda passa nos 5 checks.

**P: Posso usar com livros em outras línguas?**
R: Sim · LLM cuida da tradução. Especifique `--lang=en` ou outra. Hotlines de saúde mental adaptam-se à audiência.

**P: O método funciona com ficção / romance?**
R: Foi calibrado pra obras densas não-ficcionais (filosofia · psicologia · espiritualidade · ensaio). Funciona com ficção rica em camada arquetípica (Tolkien · Dostoiévski · Hesse · Borges) mas com adaptação. Veja [`customization.md`](customization.md).

---

— `commands.md` · cafe-method v1.0 · 2026-05-20
