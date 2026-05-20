# Task · compose-publication-bundle

> **Owner:** `joseph-chief` (Joseph)
> **Squad:** cafe-method
> **Estimated time:** 5-8 min

---

## Objetivo

Receber todos os dias com PASS do Sentinel + book-structure-map e compor o **bundle final de publicação**.

---

## Input

- `outputs/{book-slug}/book-structure-map.yaml`
- `outputs/{book-slug}/dias/dia-{01..NN}.md` (todos com PASS)

---

## Steps

### 1. Gerar POST PRINCIPAL

Template: `templates/output-post-principal.md`

Estrutura obrigatória:

```markdown
## 📖 {Comunidade} · Trilha {Densidade} · {Título do livro} · {Autor}

**{data início} a {data fim} · {N semanas} · {N encontros}**

{INTRO · 2-3 par. · contexto da escolha do livro · por que esse formato}

---

### O livro

{PANORAMA · 3-4 par. · autor · obra · método · descoberta central · frase-âncora}

---

### As {N fases} · {N estágios totais}

{LISTA estruturada em fases · cada uma com os estágios/capítulos cobertos}

---

### Como vamos ler

{TABELA semana × bloco · datas · estágios}

{2-3 par. · estrutura diária · agente companheiro (Joseph/etc.) · papel dos comentários no Circle}

---

### O que esperar de você

{1-2 par. · convite sem prescrição · função do mito como espelho}

---

> *"{Frase de fechamento · citação do autor ou paradoxo do método}"*

Acompanhe pelos comentários abaixo. O primeiro chega hoje.

— {Café/Núcleo/Grupo}
```

**Comprimento alvo:** 700-900 palavras.

### 2. Gerar COMENTÁRIOS sequenciais

Template: `templates/output-comment-day.md`

Juntar todos os dias aprovados em arquivo único, ordenado por dia, separados por `---`.

Garantir:
- Cada dia mantém estrutura completa (introdução · desenvolvimento · evidência · camada psicológica · pontos de atenção · imagem · pergunta · paradoxo)
- Conexão entre dias (frase final de um menciona o próximo)
- Numeração sequencial preservada

### 3. Gerar CRONOGRAMA

Template: `templates/output-cronograma.md`

```markdown
# Cronograma · Trilha {Densidade} · {Livro}

📌 POST PRINCIPAL (panorama + estrutura)
   Publica: {data início} · entre 9h-12h

💬 COMENTÁRIOS SEQUENCIAIS (1 por dia, sob o post principal)

   Dia 1  · {data} · {título} ............... 9h-12h
   Dia 2  · {data} · {título} ............... 9h-12h
   ...
   Dia N  · {data} · {título} ............... 9h-12h

JANELA: 9h-12h funciona bem · 17h-19h alternativa.

📝 NOTA: cada comentário traz pergunta arquetípica · resposta orgânica · não precisa moderar.
```

### 4. Gerar DM COORDENADOR

Texto pra quem vai publicar (Rodrigo · Marcus · Helayne · quem for):

```markdown
{Coordenador}, {saudação contextualizada}.

Depois de {contexto de origem · ex: "atravessarmos o livro juntos"}, montei o material
do {Autor} pra você publicar {onde · ex: "no Circle como combinamos"}.

São 3 peças:

1. POST PRINCIPAL — panorama + estrutura
2. {N} COMENTÁRIOS sequenciais — 1 por dia
3. CRONOGRAMA — sugestão de quando soltar cada peça

Material em {pasta/link}. Posso colar texto direto se preferir.

Tom: voz de "{núcleo do grupo}" · sem assinatura individual · sem prescrição.

Abraço.
```

### 5. Adicionar credit footer

Em **todos os 4 arquivos**, no rodapé:

```
— método cafe-method · github.com/Agnello-Holding/cafe-method
```

### 6. Salvar bundle

Estrutura:
```
outputs/{book-slug}/{date}/
├── POST-PRINCIPAL.md
├── COMENTARIOS-{N}-DIAS.md
├── CRONOGRAMA.md
└── DM-COORDENADOR.md
```

---

## Output

Bundle completo · pronto pra entrega ao user.

---

## Quality checklist

- [ ] POST PRINCIPAL: 700-900 palavras · panorama claro · sem prescrição
- [ ] COMENTÁRIOS: N dias presentes · sequência preservada · transições suaves
- [ ] CRONOGRAMA: datas/horários/títulos completos
- [ ] DM COORDENADOR: tom colaborativo · Mother of Wands
- [ ] Credit footer em todos os 4 arquivos
- [ ] Sem arquivos órfãos · sem placeholder não-resolvido

---

## Entrega final ao user

```
✅ Bundle pronto · {Livro} · trilha {densidade}

📦 outputs/{book-slug}/{date}/
   ├── POST-PRINCIPAL.md       ({N} palavras)
   ├── COMENTARIOS-{N}-DIAS.md ({N} palavras totais)
   ├── CRONOGRAMA.md
   └── DM-COORDENADOR.md

Quality gate: {N}/{N} PASS
Citações: {N} verificáveis · {N} parafraseadas
CVV/SAMU: {presente em dias X | não-aplicável}

Próximos passos sugeridos:
1. Revisar POST PRINCIPAL com olhar de coordenador
2. Mandar DM ao publicador
3. Publicar conforme cronograma

— método cafe-method · github.com/Agnello-Holding/cafe-method
```

---

— Task `compose-publication-bundle` · cafe-method
