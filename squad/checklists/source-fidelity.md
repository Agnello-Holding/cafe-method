# Checklist · Source Fidelity

> **Aplicado por:** `quality-warden` (Sentinel)
> **Refere-se a:** Check 1 do `quality-gate.md`
> **Princípio AIOX:** Artigo IV · No Invention

---

## Princípio

> **Não inventamos citações. Não atribuímos tese ao autor que não está no livro. Quando não temos certeza, parafraseamos com honestidade.**

Esta é a regra mais importante do método. Toda outra qualidade desaba se a fidelidade citacional cair.

---

## Tipos de uso de fonte

### 1. Citação literal entre aspas

**Formato:**
```markdown
> *"{Frase exata do autor}"*
>
> — {Autor} · *{Obra}* · {capítulo · seção · edição}
```

**Critério PASS:**
- [ ] Frase é verbatim (palavra por palavra) do livro
- [ ] Capítulo/seção/página citados
- [ ] Edição/tradução compatível com o que está sendo lido

**Critério VETO:**
- [ ] Frase aproximada apresentada como literal
- [ ] Frase inventada com aparência de citação
- [ ] Atribuição sem referência verificável

### 2. Paráfrase honesta

**Formato:**
```markdown
{Autor} argumenta que {ideia em paráfrase}.

{Autor} sugere que {ideia em paráfrase}.

Para {Autor}, {ideia em paráfrase}.

{Autor} observa que {ideia em paráfrase}.
```

**Critério PASS:**
- [ ] Ideia está realmente no livro (mesmo que frase exata não esteja)
- [ ] Verbo de atribuição honesto: "argumenta · sugere · observa · escreve · trabalha · desenvolve"
- [ ] Não pretende ser citação literal

**Critério VETO:**
- [ ] Atribui ao autor ideia que ele não tem
- [ ] Verbo afirmativo demais ("X prova que..." quando autor só sugere)
- [ ] Substitui paráfrase por citação fake

### 3. Inspiração / contexto (sem atribuição direta)

Quando uma ideia foi formada lendo o autor mas não é dele especificamente, **não atribua ao autor**.

```markdown
✅ "Em chave junguiana, essa configuração é..."   (geral · sem atribuir)
✅ "A tradição estoica trabalha com..."           (tradição · não autor)
❌ "Marco Aurélio dizia que..."                   (se ele não disse · veto)
```

### 4. Citação cruzada (outro autor citado dentro do contexto)

Quando o autor que estamos lendo cita um terceiro:

```markdown
{Autor X} cita {Autor Y} ao discutir {tema}: *"{frase de Y}"*.
```

**Critério PASS:**
- [ ] Y realmente foi citado por X no livro
- [ ] Frase de Y existe (de Y · não inventada)

---

## Marcadores de incerteza

Use durante extração (Scholar) quando há dúvida:

```markdown
[CITAÇÃO A VERIFICAR]
```

Sentinel revisa marcadores no quality gate. Se persistir até output final, **veto automático**.

Resolução de marcador:
- Encontrou a fonte? Use citação direta.
- Não encontrou mas a ideia é do autor? Parafraseie com honestidade.
- Não tem certeza nem da ideia? Remova do texto · não force.

---

## Anti-patterns frequentes

### ❌ "Frase bonita demais"

LLMs tendem a gerar frases que "soam como o autor" mas não são dele. Atenção em frases muito polidas ou epigramáticas. Se você não consegue verificar, é paráfrase, não citação.

### ❌ Atribuição vaga

```markdown
❌ "Como dizia Campbell..."                    (qual obra? que contexto?)
✅ "Em O Herói de Mil Faces, Campbell escreve: *'{citação literal}'*" (verificável)
```

### ❌ Sintetizar conceito como citação

```markdown
❌ "Campbell ensinava: 'O monomito é a estrutura universal de toda transformação.'"
   (Campbell pode ter dito algo parecido · mas se essa frase exata não está
    em livro dele · isso é invenção · veto.)

✅ "Campbell desenvolve, ao longo do livro, a tese de que existe uma estrutura
   universal de transformação — que ele chama de monomito."
   (Paráfrase honesta. Não tenta vender como citação.)
```

### ❌ Misturar autores

```markdown
❌ "Campbell e Jung diziam que..."   (se a tese é específica de um · não atribua aos dois)
✅ "Campbell desenvolve, em diálogo com Jung, a ideia de que..."
✅ "Jung trabalhou esta camada com sua noção de {conceito}..."
```

---

## Calibração rápida

**Pergunta de auto-verificação** antes de fechar:

> *Se um leitor cruzar essa citação com o livro físico, vai encontrar?*

- Sim · com certeza → use entre aspas
- Provavelmente sim · não decoreio → parafraseie
- Não tenho certeza → marque ou remova

---

## Veto criteria (resumo)

Sentinel veta se encontrar:
1. Frase entre aspas atribuída sem capítulo/página
2. Tese atribuída ao autor que não está no livro
3. Marcador `[CITAÇÃO A VERIFICAR]` no output final
4. Citação aproximada apresentada como literal
5. Atribuição cruzada errada (X citado quando ideia é de Y)

**Rotear veto para:** `source-extractor` (Scholar)

---

— Checklist `source-fidelity` · cafe-method
