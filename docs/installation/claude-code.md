# Instalação · Claude Code

> Anthropic's Claude Code · CLI · skills + agents.

---

## Pré-requisitos

- Claude Code instalado (Claude.ai Pro · $20/mês)
- Terminal funcional

### Não tem Claude Code?

Veja [code.claude.com/docs](https://code.claude.com/docs) (URL pode mudar).

---

## Opção A · Como skill global (rápido)

```bash
mkdir -p ~/.claude/skills
cd ~/.claude/skills
git clone https://github.com/Agnello-Holding/cafe-method.git
```

Validar:
```bash
ls ~/.claude/skills/cafe-method/
# deve mostrar: README.md  squad/  prompts/  swipes/  docs/  ...
```

Ativar via `/help` ou nome direto:

```
/cafe-method
```

Ou ativar agente específico:

```
@cafe-method:joseph-chief
@cafe-method:structure-mapper
@cafe-method:source-extractor
@cafe-method:archetype-weaver
@cafe-method:quality-warden
```

---

## Opção B · Como skill de projeto (recomendado)

Versionada com seu projeto:

```bash
cd seu-projeto/
mkdir -p .claude/skills
cd .claude/skills
git clone https://github.com/Agnello-Holding/cafe-method.git
```

Vantagens:
- Skill viaja com o projeto (git)
- Time inteiro tem mesma versão
- Não polui `~/.claude/`

---

## Opção C · Via AIOX-core integration

Se você tem projeto AIOX-core com cafe-method instalado:

```bash
npm run sync:ide:claude
```

Skills nativas geradas em `.claude/agents/`:

```
.claude/agents/joseph-chief.md
.claude/agents/joseph-cartographer.md
.claude/agents/joseph-scholar.md
.claude/agents/joseph-weaver.md
.claude/agents/joseph-sentinel.md
```

Ativação:

```
@joseph                    # shortcut
@joseph-chief              # nome completo
@cartographer              # shortcut especialista
```

---

## Validar instalação

### Verificar skill carregada

```
/skills
```

Deve listar `cafe-method` (ou `cafe-method:*` se via AIOX).

### Smoke test

```
@joseph
```

Esperado: greeting de Joseph com comandos `*cafe-*`.

```
*cafe-help
```

Esperado: tabela de comandos.

---

## Comandos

| Comando | Função |
|---|---|
| `*cafe-extract <livro> [densidade]` | Pipeline completo |
| `*cafe-map <livro>` | Só mapear estrutura |
| `*cafe-day <N>` | Gerar 1 dia |
| `*cafe-quality <arquivo>` | Quality gate isolado |
| `*cafe-swipe <slug>` | Ver swipes prontos |
| `*cafe-help` | Manual rápido |
| `*exit` | Sair da persona |

---

## Atualizando

### Skill global

```bash
cd ~/.claude/skills/cafe-method
git pull
```

### Skill de projeto

```bash
cd seu-projeto/.claude/skills/cafe-method
git pull
git add .
git commit -m "chore: bump cafe-method to latest"
```

### Via AIOX-core

```bash
cd squads/cafe-method
git pull
cd ../..
npm run sync:ide:claude
```

---

## Desinstalando

### Global

```bash
rm -rf ~/.claude/skills/cafe-method
```

### Projeto

```bash
rm -rf seu-projeto/.claude/skills/cafe-method
```

### Via AIOX

Remover squad raiz · sync:

```bash
rm -rf squads/cafe-method
npm run sync:ide:claude
```

---

## Output

Claude Code salva outputs em `outputs/{book-slug}/{date}/` do projeto ativo (ou pasta atual do CLI).

---

## Configuração avançada

### Permissions

Se você usa permission system do Claude Code:

```yaml
# .claude/settings.json
{
  "permissions": {
    "tools": {
      "cafe-method": "allow"
    }
  }
}
```

### Hooks

Se você quer rodar quality gate automaticamente após cada extract:

```javascript
// .claude/hooks/post-joseph-extract.cjs
const { execSync } = require('child_process');

module.exports = (context) => {
  if (context.tool === 'cafe-method' && context.command === '*cafe-extract') {
    console.log('🛡️ Running additional quality validation...');
    execSync(`npm run validate:joseph-output -- ${context.output_dir}`);
  }
};
```

---

## Troubleshooting

### Skill não ativa

```
/skills reload
```

ou reinicie Claude Code.

### Agente não responde como Joseph

Verifique se `@joseph` está ativando a persona certa. Pode ter conflito de nome.

```
/agents list | grep joseph
```

Se houver múltiplos `joseph` (ex: outro squad), use nome completo: `@cafe-method:joseph-chief`.

### Citações inventadas

LLMs alucinam. Use `*cafe-quality` no output pra Sentinel pegar:

```
*cafe-quality outputs/livro/dias/dia-03.md
```

Se Sentinel detectar invenção, refaça o dia.

---

— `installation/claude-code.md` · cafe-method v1.0 · 2026-05-20
