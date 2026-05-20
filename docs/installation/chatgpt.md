# Instalação · ChatGPT

> Funciona em conta free · melhor experiência com Plus (Custom GPT) ou Pro.

---

## Pré-requisitos

- Conta no [ChatGPT](https://chat.openai.com) (free funciona)

---

## Opção A · Free · copy-paste (1 vez · sem reuso)

### Passo 1 · Copie o prompt master

Abra: [`prompts/cafe-method-pt.md`](../../prompts/cafe-method-pt.md)

No GitHub:
1. Clique em **Raw**
2. Ctrl+A · Ctrl+C

### Passo 2 · Cole no ChatGPT

1. **+ New chat**
2. Cola o prompt inteiro
3. Enter

ChatGPT responde com greeting.

### Passo 3 · Passe o livro

```
Livro: Brené Brown · A Coragem de Ser Imperfeito
Densidade: mediada
Audiência: comunidade de mulheres adultas
```

### Passo 4 · Receba bundle e use

Mesmo fluxo do Claude.ai · ver [`claude-web.md`](claude-web.md).

---

## Opção B · ChatGPT Plus · Custom GPT (recomendado pra reuso)

Plus ($20/mês) permite criar **Custom GPT** persistente.

### Setup do Custom GPT

1. **Explore GPTs** (sidebar)
2. **+ Create**
3. **Configure** (tab)

### Configuração

**Name:** `Cafe Method`

**Description:**
```
Extração densa de livros · trilhas de leitura mediada · método cafe-method.
Transforma qualquer livro em POST PRINCIPAL + N COMENTÁRIOS sequenciais
pra publicar em comunidade (Circle · Discord · Slack · grupo de leitura).
```

**Instructions:**
Cole o conteúdo de [`prompts/cafe-method-pt.md`](../../prompts/cafe-method-pt.md) inteiro.

**Conversation starters:**
```
Quero extrair "Marco Aurélio · Meditações" em trilha mediada
Mapeie estrutura de "Nietzsche · Assim Falou Zaratustra"
Gere o dia 3 do livro que estamos atravessando
Mostre o swipe Campbell como referência
```

**Knowledge:**
Anexe os arquivos do swipe Campbell:
- `POST-PRINCIPAL.md`
- `COMENTARIOS-10-DIAS.md`
- `DM-COORDENADOR.md`
- `METADATA.yaml`

Baixe do repo: [swipes/campbell-o-heroi-de-mil-faces/](https://github.com/Agnello-Holding/cafe-method/tree/main/swipes/campbell-o-heroi-de-mil-faces)

**Capabilities:**
- ✅ Web Browsing (útil pra confirmar bibliografia)
- ❌ DALL·E (não usamos · imagens-arquétipo são texto)
- ❌ Code Interpreter (não necessário)

### Publicação (opcional)

- **Only me** — privado · você usa
- **Anyone with the link** — compartilhe com Feldman / colaboradores
- **Public** — qualquer um descobre via Explore GPTs (considerações de licença · veja [`../../LICENSE`](../../LICENSE))

Se publicar público, atribua autoria no Description:
```
Powered by cafe-method v1.0 · Jhonas Agnello · MIT · github.com/Agnello-Holding/cafe-method
```

---

## Opção C · ChatGPT Pro · Custom GPT + Plugins

Pro ($200/mês) tem acesso ao Codex CLI integrado e modelos mais potentes (GPT-4o · o1 · etc.).

Para uso intensivo (extrair múltiplos livros · usar dia a dia), Pro vale a pena.

Setup do Custom GPT é o mesmo da Opção B.

---

## Comandos disponíveis após setup

```
*cafe-extract "livro" mediada
*cafe-map "livro"
*cafe-day 3
*cafe-quality {texto}
*cafe-swipe campbell
*cafe-help
```

---

## Atualizando o Custom GPT

Quando o método tiver release nova (v1.1 · v2.0):

1. Vá no Custom GPT
2. **Edit GPT**
3. Atualize **Instructions** com novo `prompts/cafe-method-pt.md`
4. Adicione novos swipes ao **Knowledge** se relevante

---

## Vantagens dessa opção

- ✅ Conversation starters · mais rápido de invocar
- ✅ Knowledge persistente · não precisa colar swipe
- ✅ Web browsing nativo (confirma bibliografia)
- ✅ Compartilhável via link

---

## Limitações

### GPT-4 vs GPT-3.5

GPT-4o (Plus/Pro) é significativamente melhor pra:
- Fidelidade citacional (alucina menos)
- Densidade real (mantém 1.500 palavras sem fugir)
- Camada arquetípica (não cai em prescrição motivacional)

GPT-3.5 (free) pode falhar em:
- Citações (mais alucinação)
- Sentinel veta mais frequentemente
- Pode perder o tom Café Lendário e cair em ChatGPT padrão

Recomendação: use Plus pelo menos.

### Limite de mensagens (Plus)

40 messages/3h no GPT-4o. Suficiente pra um extract completo (~30-40 mensagens). Pra múltiplos livros num dia, aguarde reset.

---

## Troubleshooting

### Custom GPT não respeita Sentinel

Verifique se o prompt inteiro foi colado no Instructions (não só parte).

Reforce:
```
Como Sentinel definido nas Instructions, recuse outputs que violem
os 5 quality checks · principalmente fidelidade citacional.
```

### Knowledge não usada

Se Custom GPT ignora os swipes anexados, peça explicitamente:
```
Consulte o swipe Campbell na knowledge antes de gerar o próximo dia · calibre tom e densidade.
```

### Tom muito motivacional

GPT tende a "destrave" / "transforme". Lembre:
```
Lembre-se · regras de Anti-prescrição:
- Sem 'destrave' · 'transforme' · 'X passos'
- Devolva pergunta · não receita
Refaça a pergunta de Joseph respeitando isso.
```

---

— `installation/chatgpt.md` · cafe-method v1.0 · 2026-05-20
