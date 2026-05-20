# Filosofia · cafe-method

> Os 5 princípios não-negociáveis · com contexto.

---

## 1. Fidelidade à fonte

> *"Não inventamos citações. Não atribuímos tese ao autor que não está no livro. Quando não temos certeza, parafraseamos com honestidade."*

### Por que importa

LLMs alucinam citações com facilidade. Em domínios de marketing, isso é irritante mas tolerável. Em **leitura de obras canônicas**, é traição.

Quando um leitor lê *"Campbell escreveu: 'X'"* e vai conferir no livro, e a frase não está lá — toda a obra fica sob suspeita. A confiança quebra.

### Como aplicamos

- Citação entre aspas + atribuída → fonte verificável (capítulo · página)
- Paráfrase honesta → *"{Autor} argumenta que..."* · *"{Autor} sugere que..."*
- Incerteza → não inventar · parafrasear ou remover

### Onde está enforçado

- Agente `source-extractor` (Scholar) — regra de extração
- Agente `quality-warden` (Sentinel) — Check 1 do quality gate
- Checklist `source-fidelity.md`
- Constitution AIOX · Artigo IV (No Invention)

---

## 2. Densidade respeita o livro

> *"1 semana pra Holiday · 2 pra Campbell · 4 pra Nietzsche. Cada livro pede o que pede."*

### Por que importa

Tentar atravessar Nietzsche em 1 semana é achatar. Esticar Holiday em 4 semanas é diluir. **Densidade não é status** — é leitura honesta do que o livro pede.

### Como aplicamos

3 trilhas canônicas:

| Trilha | Duração | Indicado pra |
|---|---|---|
| **Rápida** | 1 sem · 5 dias | Self-help denso · ensaios curtos · 1 ideia central |
| **Mediada** | 2 sem · 10 dias | Densos com estrutura clara · estoicismo clássico · mitologia |
| **Hermética** | 4 sem · 20 dias | Aforismático · denso conceitual · poético-filosófico |

### Onde está enforçado

- Agente `structure-mapper` (Cartographer) decide a trilha
- Arquivo `data/density-trails.yaml`
- Cartographer pode **sugerir contra a vontade do user** se a trilha pedida não respeitar o livro

---

## 3. Camada arquetípica não-prescritiva

> *"Devolvemos pergunta, não receita."*

### Por que importa

Há uma tentação enorme em conteúdo derivado de Campbell/Jung de virar **coaching arquetípico** — "use o monomito pra transformar sua vida em 17 passos". Isso é o oposto do que Campbell escreveu.

A função do mito, segundo Campbell, é **dar linguagem ao que se atravessa**. Não dar receita. Não diagnosticar. Não resolver. Espelhar.

### Como aplicamos

A camada arquetípica de cada dia tem 3 elementos fixos:

1. **Imagem-arquétipo** — concreta · sensorial · sem virar metáfora abstrata
2. **Pergunta de Joseph** — aberta · 2-3 encadeadas · sempre 2ª pessoa · sem resposta única
3. **Paradoxo de fechamento** — carrega tensão · não resolve · ancora

E uma lista de palavras proibidas:
- "destrave" / "destravar"
- "transforme sua leitura/vida"
- "revolucione"
- "X passos para Y"
- "fórmula infalível"
- "garantido"
- "você precisa" / "você deve" (imperativo direto)
- "está pronto para X?" (pseudo-pergunta)

### Onde está enforçado

- Agente `archetype-weaver` (Weaver) tece sem prescrição
- Agente `quality-warden` (Sentinel) — Check 2 do quality gate
- Veto automático quando palavras proibidas aparecem

---

## 4. Mother of Wands

> *"Mostramos a chama · protegemos a fonte."*

A frase vem da carta do tarô. **A Rainha de Paus** segura uma vara florida — autoridade que cresce. **A Mãe das Paus** mostra a chama sem queimar. Compartilha sem perder.

### Por que importa

A tentação de quem cria método é **vender em camadas**: prompt grátis · curso avançado · mentoria exclusiva · certificação. Mother of Wands inverte isso: **entregamos o método inteiro de uma vez**. Open source. MIT. Sem amarrar plataforma. Sem vender camada.

### Como aplicamos

- **Open source MIT** · use livremente
- **Squad AIOX completo** · não versão lite
- **Prompt-only fallback** · funciona em qualquer LLM grátis
- **Swipe Campbell** · exemplo completo embutido
- **Sem ofertas** · sem upgrade · sem certificação
- **Crédito ao autor em 5 lugares** (LICENSE · AUTHORS · README footer · config header · output footer) — mas discretos · não invasivos

### Onde está enforçado

- Licença MIT
- Repo público desde dia 1
- Sem branding promocional · sem CTA pra produto pago

---

## 5. Segurança em saúde mental

> *"CVV (188) e SAMU (192) sempre presentes quando o tema pesar."*

### Por que importa

Livros densos tocam temas que ressoam com **quadros clínicos reais**:
- Ventre da Baleia ↔ depressão maior
- Recusa do Retorno ↔ reclusão pós-trauma
- Nigredo alquímico ↔ noite escura da alma
- Estrada das Provas prolongada ↔ esgotamento crônico

Quando um leitor que está em crise lê um material que toca o que ele atravessa **sem aviso de cuidado profissional**, o material pode parecer prometer ser solução. **Não somos solução.** Somos linguagem.

### Como aplicamos

Aviso CVV/SAMU obrigatório em temas sensíveis:

```
⚠️ Esta é a pergunta mais delicada da semana. Se ela tocar em ideação
suicida ou saúde mental aguda: **CVV 188 (24h) / SAMU 192**.
Esta roda atravessa nomes — não substitui psicoterapia, psiquiatria,
ou cuidado emergencial.
```

CVV (188) **e** SAMU (192) sempre juntos. Limite do método declarado.

Para audiências fora do Brasil, hotlines locais (988 nos EUA · 116 123 no Reino Unido · etc.).

### Onde está enforçado

- Agente `archetype-weaver` (Weaver) adiciona aviso quando trigger
- Agente `quality-warden` (Sentinel) — Check 3 do quality gate
- Checklist `safety-cvv.md`
- Veto automático quando trigger sem aviso

---

## Síntese

Os 5 princípios respondem a 5 perguntas:

| Princípio | Pergunta |
|---|---|
| Fidelidade à fonte | *Esse método pode ser confiado?* |
| Densidade respeita o livro | *Esse método respeita o autor?* |
| Camada não-prescritiva | *Esse método respeita o leitor?* |
| Mother of Wands | *Esse método é honesto comercialmente?* |
| Segurança em saúde mental | *Esse método pode causar dano?* |

Todos os 5 são checados pelo Sentinel antes de qualquer output sair. Os 5 são vetáveis. **Não há output sem todos os 5 PASS.**

---

— `filosofia.md` · cafe-method v1.0 · 2026-05-20
