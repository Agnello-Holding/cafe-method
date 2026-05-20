# Task · extract-day-content

> **Owner:** `source-extractor` (Scholar)
> **Squad:** cafe-method
> **Estimated time:** 10-15 min por dia

---

## Objetivo

Receber 1 dia do `book-structure-map` e produzir resumo extenso fiel à fonte (1.300-1.800 palavras).

---

## Input

```yaml
day: int
title: string
stages_covered: list
chapters_reference: string
pages: string
tldr: string
attention_flags: list
book_metadata: { author, title, edition, ... }
```

---

## Steps

### 1. Ler o capítulo correspondente

Acesse capítulo + páginas do dia. Se LLM tem conhecimento do livro, use; se não, peça ao user a fonte ou pesquise.

### 2. Identificar elementos a extrair

Antes de escrever, liste:

- **Definição que o autor dá** do conceito/estágio
- **2-3 exemplos** que o autor usa (mitológicos · históricos · etnográficos · contemporâneos)
- **1-2 camadas psicológicas** que o autor cita (Jung · Freud · Adler · etc.)
- **Citações literais** com fonte verificável
- **Distinções finas** que o autor faz (o que se confunde com este estágio · sinais de estar dentro dele)

### 3. Estruturar o dia (formato fixo)

```markdown
## 💬 COMENTÁRIO · DIA {N} · {data} · {título}

**📍 Estágio(s):** {N-M} dos {total} · Bloco: {Partida/Iniciação/Retorno}
**📖 Leitura sugerida:** {Cap. X, seção Y · pp. NN-NN}

---

{INTRO · 1-2 par.}

> *"{Citação literal}"*
>
> — {Autor} · *{Obra}* · {ref}

{DESENVOLVIMENTO · 3-5 par.}

{EVIDÊNCIA · 2-3 par.}

{CAMADA PSICOLÓGICA · 1-2 par.}

{PONTOS DE ATENÇÃO · 1 par.}

[ARCHETYPAL_LAYER_PLACEHOLDER]

{Frase de conexão com próximo dia}
```

### 4. Aplicar princípios de fidelidade

- **Citação atribuída entre aspas:** só com fonte verificável
- **Paráfrase honesta:** *"{Autor} argumenta que..."* / *"{Autor} sugere..."*
- **Incerteza:** marque `[CITAÇÃO A VERIFICAR]` · Sentinel revisa
- **Evidência:** use os exemplos que o autor de fato cita · não substitua

### 5. Marcadores especiais

- `[ARCHETYPAL_LAYER_PLACEHOLDER]` no fim — Weaver tece aqui
- `[CVV_TRIGGER]` quando tema toca saúde mental aguda — Weaver expande em aviso

### 6. Verificar densidade

Target: **1.300-1.800 palavras**. Use word count antes de fechar.

- < 1.300: raso · expandir
- > 1.800: cortar · não diluir

### 7. Atribuição cultural

Tradições não-ocidentais → **nomeie a linhagem específica**:

- ✅ "Bardo Thödol (Livro Tibetano dos Mortos)"
- ❌ "sabedoria oriental"

### 8. Léxico gendrado (quando presente)

Adicione **aviso conceitual** no primeiro uso:

> *Aviso: {Autor} escreveu em {ano}. "{termo}" aqui não é literal {sexo} — é categoria arquetípica. Em chave junguiana, é {anima/animus/Self...}.*

---

## Output

`outputs/{book-slug}/dias/dia-{NN}.md` (sem camada arquetípica ainda · marcadores deixados)

---

## Quality checklist

- [ ] 1.300-1.800 palavras
- [ ] Mínimo 2 citações/paráfrases com fonte
- [ ] Mínimo 2 exemplos de evidência que o autor usa
- [ ] Camada psicológica presente quando autor toca
- [ ] Marcadores `[ARCHETYPAL_LAYER_PLACEHOLDER]` e `[CVV_TRIGGER]` (se aplicável)
- [ ] Atribuição cultural com linhagem específica
- [ ] Aviso conceitual se léxico gendrado presente
- [ ] Zero invenção · zero alucinação

---

## Handoff

```
📤 Handoff → Weaver (archetype-weaver)

Dia {N} extraído · {N} palavras · {N} citações verificáveis.
Marcadores deixados:
  [ARCHETYPAL_LAYER_PLACEHOLDER]
  [CVV_TRIGGER]: {sim/não}

Próximo: tecer camada arquetípica.
```

---

— Task `extract-day-content` · cafe-method
