# Instalação · Claude.ai (web)

> Sem instalação real · cola o prompt · usa. Funciona em conta grátis.

---

## Pré-requisitos

- Conta no [Claude.ai](https://claude.ai) (free funciona)
- Navegador atualizado

---

## Uso simples (1 vez · sem reuso)

### Passo 1 · Copie o prompt master

Abra: [`prompts/cafe-method-pt.md`](../../prompts/cafe-method-pt.md)

No GitHub:
1. Clique no arquivo
2. Botão **Copy raw file** (ícone copiar no canto superior direito)
3. Ou clique em **Raw** e copie tudo (Ctrl+A · Ctrl+C)

### Passo 2 · Cole no Claude.ai

1. Abra nova conversa
2. Cole o prompt inteiro
3. Aperte enter

Claude responde com greeting:

```
🧠 Joseph (cafe-method · v1.0) online.

Sou companheiro de leitura densa...
```

### Passo 3 · Passe o livro

```
Livro: Marco Aurélio · Meditações
Densidade: mediada
Audiência: comunidade de leitura amadora
```

### Passo 4 · Receba o bundle

Claude vai gerar (em 5-15 min):
- POST PRINCIPAL
- 10 COMENTÁRIOS sequenciais
- CRONOGRAMA
- DM COORDENADOR

### Passo 5 · Copie e use

Copie cada peça pra um lugar seguro (Drive · Notion · Obsidian).

---

## Uso recorrente (recomendado)

Pra usar várias vezes sem colar o prompt todo dia, crie um **Claude Project**.

### Setup do Project

1. Em [Claude.ai](https://claude.ai), clique em **Projects** (sidebar)
2. **+ New Project**
3. Nome: `Cafe Method`
4. Descrição: `Extração densa de livros · trilhas de leitura mediada · método cafe-method`

### Configurar instructions

1. Dentro do Project, clique em **Set custom instructions**
2. Cole o conteúdo de [`prompts/cafe-method-pt.md`](../../prompts/cafe-method-pt.md) inteiro
3. Salve

### Adicionar knowledge (opcional · melhora resultados)

Anexe o swipe Campbell como referência:

1. Em **Project knowledge**, **+ Add files**
2. Anexe os 4 arquivos de `swipes/campbell-o-heroi-de-mil-faces/`:
   - `POST-PRINCIPAL.md`
   - `COMENTARIOS-10-DIAS.md`
   - `DM-COORDENADOR.md`
   - `METADATA.yaml`

Com o swipe na knowledge, Claude calibra densidade e tom pelo exemplo.

### Configuração avançada

- **Model:** Claude 3.5 Sonnet ou superior (Haiku é mais barato mas menos confiável em fidelidade citacional)
- **Style:** Default (Joseph adapta o tom internamente)

---

## Como usar o Project

1. Entre no Project `Cafe Method`
2. **New conversation**
3. Já cola direto:
   ```
   Livro: [autor · título]
   Densidade: [rapida/mediada/hermetica]
   Audiência: [descrição]
   ```
4. Joseph greeting + workflow

Cada conversa nova dentro do Project mantém as instructions e knowledge. Não precisa colar o prompt.

---

## Limitações da versão web

### Contexto

Conversas longas podem estourar limite de tokens. Soluções:

1. **Use `*cafe-day <N>`** pra gerar um dia por vez em vez de batch
2. **Nova conversa** pra cada livro (não acumular contexto entre livros)
3. **Claude Pro** ($20/mês) tem contexto maior · faz diferença

### Sem comandos slash de verdade

Os `*cafe-*` são reconhecidos pelo prompt (não são comandos reais do Claude.ai). Funciona pq o prompt instrui o modelo a interpretá-los.

Se Claude esquecer comandos, lembre:
```
Use o comando *cafe-day 5 conforme as instruções iniciais.
```

### Sem persistência de output

Bundles não são salvos automaticamente · você precisa copiar e salvar manualmente.

---

## Quando essa opção não basta

Considere upgrade pra:

- **Codex CLI** · se você quer comandos de terminal de verdade → [`codex.md`](codex.md)
- **Claude Code** · se você quer agente persistente local → [`claude-code.md`](claude-code.md)
- **AIOX-core** · se você quer integrar com outros agentes (PM · Architect · DevOps) → [`aiox.md`](aiox.md)

---

## Vantagens dessa opção

- ✅ **Zero instalação**
- ✅ **Funciona em conta free**
- ✅ **Funciona em qualquer navegador**
- ✅ **Bom pra primeiro teste**
- ✅ **Compartilhável (link da conversa)**

---

## Troubleshooting

### Claude não entra na persona Joseph

Verifique:
- Você colou o prompt inteiro? (deve ter ~3.500 palavras)
- Apertou enter depois de colar?
- Claude respondeu com greeting?

Se não respondeu greeting, cole de novo · pode ter erro de copy/paste.

### Claude inventa citações

Pede explicitamente:
```
Sentinel · refaça quality gate · verifique fidelidade citacional.
Se você não tem certeza de uma citação, parafraseie indicando 'Campbell argumenta que...'
```

### Output trunca no meio

Conversa muito longa · contexto excedido. Soluções:
1. Comece nova conversa · faça `*cafe-map` primeiro · depois `*cafe-day N` um por vez
2. Use Claude Project · contexto maior
3. Upgrade pra Pro

---

— `installation/claude-web.md` · cafe-method v1.0 · 2026-05-20
