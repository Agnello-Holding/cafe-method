# Task · weave-archetypal-layer

> **Owner:** `archetype-weaver` (Weaver)
> **Squad:** cafe-method
> **Estimated time:** 3-5 min por dia

---

## Objetivo

Receber 1 dia denso do Scholar e adicionar a camada arquetípica: **imagem · pergunta · paradoxo · aviso CVV** (quando aplicável).

---

## Input

Arquivo `outputs/{book-slug}/dias/dia-{NN}.md` com:
- Conteúdo denso completo
- Marcador `[ARCHETYPAL_LAYER_PLACEHOLDER]` no fim
- Marcador `[CVV_TRIGGER]` se aplicável

---

## Steps

### 1. Ler o dia inteiro

Antes de tecer, leia tudo. A camada arquetípica precisa ressoar com o conteúdo · não ser genérica.

### 2. Tecer imagem-arquétipo

**Critério:** concreta · sensorial · ancorada no estágio.

**Estrutura:** `*{substantivo concreto · qualidade · gesto}*`

Consultar `data/archetypes-library.yaml` para referências canônicas + inspiração.

**Exemplos válidos:**
- *"a porta que se entreabre sozinha quando o herói não está olhando"*
- *"a caverna úmida · útero do mundo · escuridão fecunda"*
- *"o herói tomando café da manhã · sorri para o filho · e em silêncio carrega todos os mundos"*

### 3. Tecer pergunta de Joseph

**Estrutura:**
- 2-3 perguntas encadeadas
- Sempre 2ª pessoa singular ("você")
- Aberta · sem resposta única
- Pede honestidade · não acerto
- Sem prescrição ("destrave" · "passos" · "está pronto")

**Padrão:**
```markdown
**❓ Pergunta de Joseph:**
> *{Pergunta concreta que ancora no estágio.}*
>
> *{Pergunta que aprofunda · pode usar metáfora do dia.}*
>
> *{Opcional: pergunta temporal — "olhando agora..." / "se você tivesse que..."}*
```

### 4. Tecer paradoxo de fechamento

**Critério:** carrega tensão · não resolve · ancora.

**Padrões comuns:**
- *"X não é Y. É Z."*
- *"O X chega quando Y. Não antes."*
- *"O Y é o X que você Z."*

**Exemplos válidos:**
- *"O sintoma é o chamado que você recusou ouvir."*
- *"O ventre não é morte. É reorientação."*
- *"A Deusa te chama para fora. A Tentação te chama para trás."*

### 5. Adicionar aviso CVV/SAMU (se [CVV_TRIGGER])

Quando Scholar deixou `[CVV_TRIGGER]`, expanda em aviso formal **antes** da pergunta de Joseph:

```markdown
⚠️ {Frase contextualizadora curta · ex: "Esta é a pergunta mais delicada da semana."}
Se ela tocar em ideação suicida ou saúde mental aguda: **CVV 188 (24h) / SAMU 192**.
Esta roda atravessa nomes — não substitui psicoterapia, psiquiatria, ou cuidado emergencial.
```

CVV (188) **e** SAMU (192) sempre juntos. Limite do método declarado.

### 6. Inserir tudo na posição correta

Ordem fixa no fim do dia (substituindo `[ARCHETYPAL_LAYER_PLACEHOLDER]`):

```markdown
{Aviso CVV se aplicável}

**🜂 Imagem-arquétipo do dia:** *{imagem}.*

**❓ Pergunta de Joseph:**
> *{pergunta(s)}*

> *"{paradoxo}"*

{Frase de conexão com próximo dia · já estava no texto do Scholar}
```

---

## Output

`outputs/{book-slug}/dias/dia-{NN}.md` (atualizado · com camada arquetípica · sem marcadores)

---

## Quality checklist

- [ ] Imagem-arquétipo concreta (não abstrata)
- [ ] Pergunta de Joseph aberta (sem resposta única)
- [ ] Paradoxo carrega tensão sem resolver
- [ ] Aviso CVV/SAMU presente se `[CVV_TRIGGER]` estava ativo
- [ ] Zero prescrição (sem "destrave" · "passos" · "está pronto")
- [ ] Ressonância com conteúdo do dia (não genérico)

---

## Handoff

```
📤 Handoff → Sentinel (quality-warden)

Dia {N} com camada arquetípica · pronto pra quality gate.

Adicionado:
  · Imagem: "{primeira frase}"
  · Pergunta: {N} encadeadas
  · Paradoxo: "{frase}"
  · CVV/SAMU: {presente | não-aplicável}

Próximo: validar 5 checks.
```

---

— Task `weave-archetypal-layer` · cafe-method
