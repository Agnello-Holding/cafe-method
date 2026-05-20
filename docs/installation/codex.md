# Instalação · Codex CLI

> Codex CLI da OpenAI · skills nativas do aios-core mapeadas.

---

## Pré-requisitos

- Codex CLI instalado (ChatGPT Pro · $20/mês)
- Terminal funcional

### Não tem Codex CLI?

Veja [code.openai.com/docs/codex](https://code.openai.com/docs/codex) (URL pode mudar).

---

## Opção A · Via AIOX sync (recomendado)

Se você já tem cafe-method instalado como squad AIOX (veja [`aiox.md`](aiox.md)):

```bash
npm run sync:skills:codex
```

Isso gera skills automaticamente em `.codex/skills/`:

```
.codex/skills/aiox-cafe-chief/
.codex/skills/aiox-cafe-structure-mapper/
.codex/skills/aiox-cafe-source-extractor/
.codex/skills/aiox-cafe-archetype-weaver/
.codex/skills/aiox-cafe-quality-warden/
```

Validar:
```bash
codex --version
codex /skills | grep aiox-joseph
```

---

## Opção B · Standalone (sem AIOX-core)

### Instalar globalmente

```bash
mkdir -p ~/.codex/skills
cd ~/.codex/skills
git clone https://github.com/Agnello-Holding/cafe-method.git
```

### Configurar `~/.codex/config.toml`

Adicione:

```toml
[skills.aiox-cafe-chief]
path = "~/.codex/skills/cafe-method/squad/agents/joseph-chief.md"
description = "Cafe Method · orquestrador · extração densa de livros"
keywords = ["joseph", "method", "book", "extraction", "reading", "trail", "campbell"]

[skills.aiox-cafe-cartographer]
path = "~/.codex/skills/cafe-method/squad/agents/structure-mapper.md"
description = "Cartographer · mapeador de estrutura de livros"
keywords = ["cartographer", "structure", "map", "book"]

[skills.aiox-cafe-scholar]
path = "~/.codex/skills/cafe-method/squad/agents/source-extractor.md"
description = "Scholar · extrator de conteúdo denso fiel à fonte"
keywords = ["scholar", "extractor", "source", "fidelity"]

[skills.aiox-cafe-weaver]
path = "~/.codex/skills/cafe-method/squad/agents/archetype-weaver.md"
description = "Weaver · tecedor de camada arquetípica"
keywords = ["weaver", "archetype", "jung", "campbell"]

[skills.aiox-cafe-sentinel]
path = "~/.codex/skills/cafe-method/squad/agents/quality-warden.md"
description = "Sentinel · quality gate · veto authority"
keywords = ["sentinel", "quality", "gate", "veto"]
```

---

## Opção C · Local-first (recomendado por Alan Nicolas)

Em vez de global, instale no projeto:

```bash
cd seu-projeto/
mkdir -p .codex/skills
cd .codex/skills
git clone https://github.com/Agnello-Holding/cafe-method.git
```

Configure `seu-projeto/.codex/config.toml` (mesma estrutura).

Vantagem: versão pinada com o projeto · não conflito entre projetos diferentes.

---

## Validar instalação

```bash
codex /skills
```

Esperado: ver `aiox-cafe-chief`, `aiox-cafe-cartographer`, etc.

---

## Ativação

```bash
# Via /skills menu
codex
/skills
→ aiox-cafe-chief

# Direto
codex /skills aiox-cafe-chief
```

Após ativação, comandos disponíveis:

```
*cafe-extract "livro" mediada
*cafe-map "livro"
*cafe-day 3
*cafe-quality output.md
*cafe-help
```

---

## Output

Codex CLI salva outputs em pasta configurada (default: `./outputs/` do projeto ativo).

---

## Integração com AIOX-core

Se você tem ambos (AIOX-core + Codex CLI), use a Opção A. Skills ficam sincronizadas automaticamente.

Se você usa só Codex CLI sem AIOX-core, Opção B ou C funciona standalone.

---

## Atualizando

### Via AIOX sync

```bash
cd squads/cafe-method
git pull
cd ../..
npm run sync:skills:codex
```

### Standalone

```bash
cd ~/.codex/skills/cafe-method
git pull
```

---

## Desinstalando

```bash
# Global
rm -rf ~/.codex/skills/cafe-method
# editar ~/.codex/config.toml removendo as 5 entradas [skills.aiox-cafe-*]

# Local
rm -rf .codex/skills/cafe-method
# editar .codex/config.toml
```

---

## Troubleshooting

### Skill não aparece em `/skills`

```bash
# Verificar config.toml válido
codex --validate-config

# Reiniciar codex
codex --restart
```

### Permission denied

```bash
chmod -R 644 ~/.codex/skills/cafe-method/
```

### Conflito de keywords

Se você tem outra skill com keywords parecidas, ajuste `keywords` no config.toml pra evitar match conflitante.

---

— `installation/codex.md` · cafe-method v1.0 · 2026-05-20
