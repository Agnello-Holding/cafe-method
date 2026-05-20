# Quickstart · Primeiro extract em 5 minutos

> **Sem instalação. Sem terminal. Sem conta paga.**
> Funciona em qualquer LLM web grátis (Claude.ai · ChatGPT · Gemini · Perplexity).

---

## Passo a passo

### 1. Abra um LLM (qualquer um)

- [Claude.ai](https://claude.ai) (gratuito · recomendado)
- [ChatGPT](https://chat.openai.com) (gratuito)
- [Gemini](https://gemini.google.com) (gratuito)

### 2. Cole o prompt master

Abra: [prompts/cafe-method-pt.md](prompts/cafe-method-pt.md)

Copie tudo. Cole no LLM. Aperte enter.

> O LLM vai responder confirmando que entrou no modo Joseph e pedir o livro.

### 3. Passe o livro

Preencha o template:

```
Livro: Marco Aurélio · Meditações
Edição: tradução Alex Marins · Martin Claret
Densidade desejada: mediada (2 semanas · 10 dias)
Audiência: comunidade de leitura amadora
Coordenador: [seu nome]
```

> O LLM vai mapear a estrutura do livro (Cartographer), pedir confirmação, e começar a extrair.

### 4. Receba o pacote

Em 3-10 minutos (dependendo do LLM), você terá:

- **POST PRINCIPAL** — panorama do livro + estrutura do clube (~800 palavras)
- **COMENTÁRIOS SEQUENCIAIS** — 1 por dia · capítulos densos (1300-1800 palavras cada)
- **CRONOGRAMA DE PUBLICAÇÃO** — quando soltar cada peça
- **DM COORDENADOR** — texto pra quem vai publicar

### 5. Publique

Cole o POST PRINCIPAL no Circle / Discord / Slack / fórum / newsletter.
Solte 1 comentário por dia sob ele, conforme o cronograma.

**Pronto.** Sua trilha de leitura mediada está rodando.

---

## Dica · use o swipe Campbell como referência

Antes de gerar seu primeiro extract, dê uma olhada em [swipes/campbell-o-heroi-de-mil-faces/](swipes/campbell-o-heroi-de-mil-faces/).

É o **primeiro extract real** feito pelo método, em produção no Café Lendár[IA] desde 18/Mai/2026. Use como referência de densidade, tom e estrutura esperados.

---

## Quando esse caminho não basta

Se você quer:

- **Reusar em múltiplos livros** sem colar o prompt toda vez
- **Integrar com outros agentes** (PM · Architect · DevOps · QA)
- **Versionar swipes** internamente no seu time
- **Sincronizar entre IDEs** (Claude · Codex · Gemini · Cursor)

→ Instale como **squad AIOX nativo**. Veja [INSTALL.md](INSTALL.md).

---

## Solução de problemas

| Sintoma | Causa provável | Solução |
|---|---|---|
| LLM trava no meio do extract | Limite de contexto | Peça um dia por vez (`gerar dia 1`, `agora dia 2`, etc.) |
| Output parece raso | Densidade não definida | Especifique a trilha (Rápida · Mediada · Hermética) |
| Citações parecem inventadas | LLM alucinando | Adicione: *"se não souber citação literal, parafraseie indicando 'Campbell argumenta que...'"* |
| Tom muito motivacional | Voz padrão LLM | Adicione: *"sem prescrição · devolva pergunta · sem 'destrave'"* |
| Sem aviso CVV/SAMU em tema sensível | Filtro Sentinel não rodou | Adicione: *"aplicar checklist safety-cvv antes de fechar"* |

---

— Quickstart · cafe-method v1.0 · 2026-05-20
