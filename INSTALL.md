# Instalação · cafe-method

> Cinco fluxos de instalação · escolha o seu contexto.

---

## Fluxo 1 · AIOX-core (recomendado · nativo)

**Pré-requisito:** projeto AIOX existente. Não tem? Comece com `npx aiox-core init meu-projeto`.

### Opção A · curl one-liner (mais simples)

```bash
cd seu-projeto-aiox/
curl -fsSL https://raw.githubusercontent.com/Agnello-Holding/cafe-method/main/scripts/install.sh | bash
```

### Opção B · git submodule (recomendado pra contribuidores)

```bash
cd seu-projeto-aiox/
git submodule add https://github.com/Agnello-Holding/cafe-method.git squads/cafe-method
git submodule update --init --recursive
```

### Opção C · clone manual

```bash
cd seu-projeto-aiox/squads/
git clone https://github.com/Agnello-Holding/cafe-method.git
cd cafe-method
ls squad/
# config.yaml  agents/  tasks/  workflows/  templates/  checklists/  data/
```

### Pós-instalação · sincronizar IDEs

No projeto AIOX:

```bash
npm run sync:ide
```

Isso espalha o squad para todas as IDEs configuradas (Claude · Codex · Gemini · Cursor · Antigravity).

### Validar

```bash
npm run validate:parity
```

Squad deve aparecer em:
- `.claude/agents/joseph-*.md`
- `.codex/skills/aiox-cafe-*/`
- `.gemini/...`

### Ativar

```
@joseph
*cafe-help
*cafe-extract "Marco Aurélio · Meditações" mediada
```

📖 Detalhes em [docs/installation/aiox.md](docs/installation/aiox.md).

---

## Fluxo 2 · Codex CLI (Alan Nicolas)

**Pré-requisito:** Codex CLI instalado (ChatGPT Pro).

### Opção A · via AIOX sync (recomendado)

Instale como squad AIOX (Fluxo 1) e depois:

```bash
npm run sync:skills:codex
```

As skills `aiox-cafe-*` aparecem em `.codex/skills/` e ficam disponíveis via:

```
/skills
→ aiox-cafe-chief
```

### Opção B · standalone (sem AIOX-core)

```bash
cd ~/.codex/skills/
git clone https://github.com/Agnello-Holding/cafe-method.git
```

Adicione ao `~/.codex/config.toml`:

```toml
[skills.aiox-cafe-chief]
path = "~/.codex/skills/cafe-method/squad/agents/joseph-chief.md"
```

📖 Detalhes em [docs/installation/codex.md](docs/installation/codex.md).

---

## Fluxo 3 · Claude Code

### Como skill global

```bash
cd ~/.claude/skills/
git clone https://github.com/Agnello-Holding/cafe-method.git
```

Use via:
```
/cafe-method  # ativa o squad inteiro
@joseph         # ativa o chief diretamente
```

### Como skill de projeto

```bash
cd seu-projeto/.claude/skills/
git clone https://github.com/Agnello-Holding/cafe-method.git
```

Mesma ativação. Vantagem: skill versionada com o projeto.

📖 Detalhes em [docs/installation/claude-code.md](docs/installation/claude-code.md).

---

## Fluxo 4 · Claude.ai web (sem instalação)

Sem instalação. Cola e usa.

1. Abra [prompts/cafe-method-pt.md](prompts/cafe-method-pt.md)
2. Copie tudo
3. Cole numa conversa do Claude.ai
4. Passe o livro

Pra reuso confortável: crie um **Claude Project** com o prompt como instruções persistentes.

📖 Detalhes em [docs/installation/claude-web.md](docs/installation/claude-web.md).

---

## Fluxo 5 · ChatGPT (free ou Plus)

### Free · copy-paste

Mesmo fluxo do Claude.ai web. Cola o prompt, passa o livro.

### Plus · Custom GPT

Crie um Custom GPT:
- **Name:** Cafe Method
- **Description:** Extração densa de livros · trilhas de leitura mediada
- **Instructions:** cole o conteúdo de `prompts/cafe-method-pt.md`
- **Knowledge:** anexe `swipes/campbell-o-heroi-de-mil-faces/` como referência
- **Capabilities:** mantenha web browsing ON (pra buscar bibliografia)

📖 Detalhes em [docs/installation/chatgpt.md](docs/installation/chatgpt.md).

---

## Matriz de compatibilidade

| Fluxo | Pré-requisito | Custo | Reuso | Recomendado pra |
|---|---|:---:|:---:|---|
| 1 · AIOX-core | Projeto AIOX | Free | ⭐⭐⭐ | Operadores AIOX · tribo Lendária |
| 2 · Codex CLI | ChatGPT Pro | $20/mês | ⭐⭐⭐ | Power users · automação |
| 3 · Claude Code | Claude.ai Pro | $20/mês | ⭐⭐ | Dev/operador em terminal |
| 4 · Claude.ai web | Conta Claude (free) | Free | ⭐ | Primeiro extract · teste |
| 5 · ChatGPT | Conta OpenAI (free) | Free | ⭐ | Primeiro extract · teste |

---

## Atualizando

### AIOX squad
```bash
cd squads/cafe-method
git pull
cd ../..
npm run sync:ide
```

### Standalone
```bash
git pull
```

### Prompts-only
Pegue a versão mais recente em [prompts/cafe-method-pt.md](prompts/cafe-method-pt.md).

---

## Desinstalando

### AIOX squad
```bash
rm -rf squads/cafe-method
npm run sync:ide
```

### Claude Code / Codex
```bash
rm -rf ~/.claude/skills/cafe-method   # ou ~/.codex/skills/cafe-method
```

---

## Suporte

- Issues: [github.com/Agnello-Holding/cafe-method/issues](https://github.com/Agnello-Holding/cafe-method/issues)
- Discussões: [github.com/Agnello-Holding/cafe-method/discussions](https://github.com/Agnello-Holding/cafe-method/discussions)
- Contato direto: [@jhonasagnello](https://github.com/jhonasagnello)

---

— `INSTALL.md` · cafe-method v1.0 · 2026-05-20
