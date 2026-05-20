# Task · quality-check

> **Owner:** `quality-warden` (Sentinel)
> **Squad:** cafe-method
> **Estimated time:** 2-3 min por dia
> **Authority:** ⚠️ Veto absoluto

---

## Objetivo

Rodar os **5 quality checks** em 1 dia e emitir veredicto: **PASS** ou **VETO** + roteamento de retorno.

---

## Input

`outputs/{book-slug}/dias/dia-{NN}.md` com camada arquetípica do Weaver.

---

## Steps

### Check 1 · Fidelidade citacional

Aplicar `checklists/source-fidelity.md`:

- [ ] Toda citação entre aspas tem fonte verificável (cap · página)
- [ ] Paráfrases usam *"{Autor} argumenta que..."* ou similar
- [ ] Zero `[CITAÇÃO A VERIFICAR]` pendente
- [ ] Tese atribuída ao autor está realmente no livro

**Se falhar:** rotear para `source-extractor`

### Check 2 · Anti-prescrição

Buscar palavras/frases proibidas:
- "destrave" / "destravar"
- "transforme sua leitura/vida"
- "revolucione"
- "X passos para Y"
- "fórmula infalível"
- "garantido"
- "você precisa" / "você deve"
- "está pronto para X?"

E verificar:
- [ ] Pergunta de Joseph é aberta (não sim/não)
- [ ] Paradoxo carrega tensão (não resolve)
- [ ] Tom não imperativo

**Se falhar:** rotear para `archetype-weaver`

### Check 3 · CVV/SAMU em tema sensível

Aplicar `checklists/safety-cvv.md`:

Triggers que exigem aviso:
- Suicídio · ideação suicida
- Depressão maior · bipolar
- Burnout grave
- Crise espiritual aguda
- Luto profundo
- Estágios míticos clínicos (Ventre · nigredo · Recusa do Retorno)

**Se trigger presente:**
- [ ] Aviso explícito com CVV 188
- [ ] Aviso explícito com SAMU 192
- [ ] Limite declarado ("não substitui psicoterapia...")
- [ ] Aviso antes/junto da pergunta sensível

**Se falhar:** rotear para `archetype-weaver`

### Check 4 · Atribuição cultural

- [ ] Tradições não-ocidentais nomeadas especificamente
- [ ] Léxico técnico mantido (nigredo · samsara · wu wei · bodhisattva)
- [ ] Sem genérico ("sabedoria oriental" · "místicos antigos")
- [ ] Sem proselitismo (não assume leitor segue tradição X)
- [ ] Sem secularização forçada

**Se falhar:** rotear para `source-extractor` (ou Weaver se for na pergunta)

### Check 5 · Léxico gendrado

Se autor usa léxico gendrado (Campbell 1949 · Freud · etc.):
- [ ] Aviso conceitual presente no primeiro uso do termo
- [ ] Termos canônicos mantidos
- [ ] Tradução clara (chave junguiana)

**Se falhar:** rotear para `source-extractor`

### Check bonus · Densidade

- [ ] 1.300-1.800 palavras (Sentinel pode vetar fora desta faixa em casos extremos · < 1.000 ou > 2.500)

---

## Output · Quality Report

### PASS

```
🛡️ Quality Report · Dia {N} · {data}

✅ Check 1 · Fidelidade citacional: PASS
✅ Check 2 · Anti-prescrição: PASS
✅ Check 3 · CVV/SAMU: {PASS | N/A}
✅ Check 4 · Atribuição cultural: PASS
✅ Check 5 · Léxico gendrado: {PASS | N/A}

VEREDICTO: PASS · pronto pra composição final.

Métricas:
  · Palavras: {N}
  · Citações: {N} literais · {N} parafraseadas
  · Imagem-arquétipo: presente
  · Pergunta de Joseph: {N} encadeadas
  · Paradoxo: presente
```

### VETO

```
🛡️ Quality Report · Dia {N} · VETO

❌ Check {N} · {nome}: VETO

   Problema: {descrição específica}
   Localização: {linha/parágrafo}
   Ação: {agente} refaça com {instrução}
```

---

## Quality checklist (meta)

- [ ] Todos os 5 checks rodaram
- [ ] Veredicto binário emitido (não "quase passa")
- [ ] Em caso de veto, agente de roteamento identificado
- [ ] Em caso de veto, instrução específica dada

---

## Handoff

### Se PASS

```
📤 Handoff → Joseph (joseph-chief)

Dia {N} aprovado · pronto pra composição final do bundle.
```

### Se VETO

```
📤 Handoff → {agente apropriado}

Dia {N} vetado · refaça {seção} com {instrução}.
```

---

— Task `quality-check` · cafe-method
