# Instalação · AIOX-core (Synkra)

> Squad nativo · primeira classe · recomendado pra operadores AIOX.

---

## Pré-requisitos

- Projeto AIOX-core existente
- Node.js >= 18
- Git instalado
- Terminal funcional (PowerShell · bash · zsh)

### Não tem projeto AIOX?

Crie um:

```bash
npx aiox-core init meu-projeto
cd meu-projeto
```

Ou veja [github.com/SynkraAI/aiox-core](https://github.com/SynkraAI/aiox-core) pra documentação completa.

---

## Opção A · curl one-liner (mais simples · não-dev friendly)

```bash
cd seu-projeto-aiox/
curl -fsSL https://raw.githubusercontent.com/Agnello-Holding/cafe-method/main/scripts/install.sh | bash
```

O script:
1. Clona o repo em `squads/cafe-method/`
2. Roda `npm run sync:ide` (se script existir)
3. Valida instalação
4. Mostra próximo passo

---

## Opção B · git submodule (recomendado pra contribuidores)

```bash
cd seu-projeto-aiox/
git submodule add https://github.com/Agnello-Holding/cafe-method.git squads/cafe-method
git submodule update --init --recursive
```

Vantagens:
- Versão pinada (git revision)
- Atualizações via `git submodule update --remote`
- Easy de contribuir (commit + push direto pro repo joseph)

---

## Opção C · clone manual

```bash
cd seu-projeto-aiox/squads/
git clone https://github.com/Agnello-Holding/cafe-method.git
cd cafe-method
ls squad/
```

Saída esperada:
```
agents/  checklists/  data/  scripts/  tasks/  templates/  workflows/
README.md  CHANGELOG.md  config.yaml
```

---

## Pós-instalação · sincronizar IDEs

No diretório raiz do projeto AIOX:

```bash
npm run sync:ide
```

Isso espalha o squad para todas as IDEs configuradas:

```
.claude/agents/joseph-*.md          ← Claude Code
.codex/skills/aiox-cafe-*/        ← Codex CLI
.gemini/agents/joseph-*.md          ← Gemini CLI
.cursor/...                          ← Cursor
.antigravity/...                     ← Antigravity
```

---

## Validar instalação

### Check 1 · Arquivos presentes

```bash
ls squads/cafe-method/squad/agents/
```

Esperado:
```
archetype-weaver.md  joseph-chief.md  quality-warden.md
source-extractor.md  structure-mapper.md
```

### Check 2 · Parity entre IDEs

```bash
npm run validate:parity
```

Esperado: `✓ All IDEs in sync`.

### Check 3 · Squad reconhecido pelo AIOX

```bash
aiox squad list
```

Esperado: ver `cafe-method` listado com 5 agentes.

---

## Ativação

### No Claude Code

```
@joseph                          # ativa orquestrador
@cafe-method:joseph-chief      # idem (formato canônico)
@cartographer                    # shortcut · ativa structure-mapper
@scholar                         # shortcut
@weaver                          # shortcut
@sentinel                        # shortcut
```

### No Codex CLI

```
/skills
→ aiox-cafe-chief
```

Ou direto:
```
/skills aiox-cafe-chief
```

### No Gemini CLI

```
/aiox-menu
→ /aiox-cafe-chief
```

### Via comandos *

Em qualquer IDE compatível:

```
*cafe-extract "Marco Aurélio · Meditações" mediada
*cafe-map "Nietzsche · Assim Falou Zaratustra"
*cafe-day 3
*cafe-quality outputs/.../dia-05.md
*cafe-swipe campbell
*cafe-help
```

---

## Output

Bundles gerados ficam em:

```
seu-projeto-aiox/outputs/{book-slug}/{date}/
├── POST-PRINCIPAL.md
├── COMENTARIOS-N-DIAS.md
├── CRONOGRAMA.md
└── DM-COORDENADOR.md
```

---

## Atualizando

### Via submodule

```bash
git submodule update --remote squads/cafe-method
npm run sync:ide
```

### Via clone

```bash
cd squads/cafe-method
git pull
cd ../..
npm run sync:ide
```

---

## Desinstalando

```bash
# Remove squad
rm -rf squads/cafe-method

# Re-sync IDEs (remove referências)
npm run sync:ide
```

Se foi instalado via submodule:

```bash
git submodule deinit -f squads/cafe-method
git rm -f squads/cafe-method
rm -rf .git/modules/squads/cafe-method
```

---

## Troubleshooting

### Squad não aparece após sync

```bash
# Verificar se config.yaml está válido
cat squads/cafe-method/squad/config.yaml | head -10

# Re-rodar sync com verbose
npm run sync:ide -- --verbose
```

### Quality gate falha sempre

Provavelmente conflito de versão LLM. Verifique:

```bash
# config do AIOX
cat .aiox-core/core-config.yaml | grep llm
```

Sentinel é exigente · LLMs muito antigos podem não passar.

### Permission denied no curl install

Em Windows com Git Bash, talvez precise:

```bash
chmod +x scripts/install.sh
./scripts/install.sh
```

Em PowerShell, use Opção B (submodule) ou Opção C (clone manual).

---

## Próximos passos

1. **Tutorial:** [`../tutorial-first-book.md`](../tutorial-first-book.md)
2. **Manual de comandos:** [`../commands.md`](../commands.md)
3. **Customização:** [`../customization.md`](../customization.md)

---

— `installation/aiox.md` · cafe-method v1.0 · 2026-05-20
