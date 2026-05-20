# Checklist · Quality Gate

> **Aplicado por:** `quality-warden` (Sentinel)
> **Quando:** antes de fechar cada dia · antes de gerar bundle final
> **Autoridade:** ⚠️ Veto absoluto

---

## Os 5 checks principais

### ✅ Check 1 · Fidelidade citacional

- [ ] Toda citação entre aspas tem fonte verificável (capítulo · página)
- [ ] Paráfrases usam *"{Autor} argumenta que..."* ou *"{Autor} sugere que..."*
- [ ] Zero `[CITAÇÃO A VERIFICAR]` pendente no output final
- [ ] Tese atribuída ao autor está realmente no livro

**Detalhes:** [`source-fidelity.md`](source-fidelity.md)

---

### ✅ Check 2 · Anti-prescrição

#### Palavras/frases proibidas (auto-veto)

- [ ] Sem "destrave" / "destravar"
- [ ] Sem "transforme sua leitura/vida"
- [ ] Sem "revolucione"
- [ ] Sem "X passos para Y" (numeração prescritiva)
- [ ] Sem "fórmula infalível"
- [ ] Sem "garantido"
- [ ] Sem "você precisa" / "você deve" (imperativo direto)
- [ ] Sem "está pronto para X?" (sim/não · pseudo-pergunta)

#### Estrutura da pergunta

- [ ] Pergunta de Joseph é aberta (não sim/não)
- [ ] 2-3 perguntas encadeadas
- [ ] Sempre 2ª pessoa singular ("você")
- [ ] Não pede acerto · pede honestidade

#### Paradoxo

- [ ] Carrega tensão · não resolve
- [ ] Sem ser motivacional
- [ ] Ancora · não vende

---

### ✅ Check 3 · CVV/SAMU em tema sensível

**Detalhes:** [`safety-cvv.md`](safety-cvv.md)

Se trigger presente:
- [ ] CVV 188 explícito
- [ ] SAMU 192 explícito (os 2 juntos)
- [ ] Limite do método declarado ("não substitui psicoterapia, psiquiatria, ou cuidado emergencial")
- [ ] Aviso antes/junto da pergunta sensível (não depois)

---

### ✅ Check 4 · Atribuição cultural

- [ ] Tradições não-ocidentais nomeadas especificamente
- [ ] Léxico técnico mantido (nigredo · samsara · wu wei · bodhisattva · etc.)
- [ ] Sem genérico ("sabedoria oriental" · "místicos antigos")
- [ ] Sem proselitismo (não assume leitor segue tradição X)
- [ ] Sem secularização forçada
- [ ] Linhagens completas quando aplicável (escola · tradição · autor representativo)

---

### ✅ Check 5 · Léxico gendrado

Se autor usa léxico gendrado (Campbell 1949 · Freud · etc.):
- [ ] Aviso conceitual no primeiro uso
- [ ] Termos canônicos mantidos ("Deusa" · "Mulher como Tentação" · "Pai")
- [ ] Tradução clara em chave junguiana

Se autor não usa: N/A.

---

## Check bonus · Densidade

- [ ] **POST PRINCIPAL:** 700-900 palavras
- [ ] **COMENTÁRIO DIÁRIO:** 1.300-1.800 palavras (Sentinel pode vetar fora da faixa extrema · < 1.000 ou > 2.500)

---

## Veredicto

### PASS (todos os checks aplicáveis aprovados)

```
✅ Quality gate · PASS · {N}/{N} checks
   Pronto pra próxima etapa.
```

### VETO (qualquer check falha)

```
❌ Quality gate · VETO · check {N} falhou

   Problema: {específico}
   Localização: {linha/parágrafo}
   Ação: {agente} refaça com {instrução}
```

---

## Notas

- **Sentinel não negocia.** Os checks são binários.
- **Veto não pune o agente.** Apenas roteia pra refazer.
- **Max retries por dia:** 2. Depois, escala pra Joseph + user.

---

— Checklist `quality-gate` · cafe-method
