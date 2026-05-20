# Task · map-book-structure

> **Owner:** `structure-mapper` (Cartographer)
> **Squad:** cafe-method
> **Estimated time:** 5-10 min

---

## Objetivo

Receber metadata de um livro e produzir o `book-structure-map.yaml` que orientará todos os outros agentes.

---

## Input

```yaml
book:
  title: string           # obrigatório
  author: string          # obrigatório
  edition: string         # opcional · ajuda com paginação
  pages_total: int        # opcional
  language_of_source: string  # default: inferir
  language_of_extraction: string  # default: pt-BR

trail:
  density: rapida | mediada | hermetica  # opcional · Cartographer sugere se ausente

audience: string          # opcional · default: "comunidade de leitura amadora"
coordinator: string       # opcional
```

---

## Steps

### 1. Validar identificação

- [ ] Livro identificável de forma única (autor + título)
- [ ] Se incerteza alta sobre obra (alucinação possível) · perguntar fonte ao user
- [ ] Confirmar edição se paginação for referenciada depois

### 2. Decidir densidade

Consultar `data/density-trails.yaml`:

| Trilha | Dias | Indicado para |
|---|:--:|---|
| Rápida | 5 | Holiday · Sinek · Clear · Newport · Greene · ensaios curtos |
| Mediada | 10 | Campbell · Marco Aurélio · Brené · Irvine · Hendricks |
| Hermética | 20 | Nietzsche · Heidegger · Wittgenstein · Espinosa · Krishnamurti |

Se user não especificar, sugerir baseado em:
- Densidade conceitual
- Estrutura natural do livro
- Audiência alvo

### 3. Dividir em N dias

Cada dia precisa:
- Título descritivo
- Estágio(s) / capítulo(s) cobertos
- Páginas de referência (se edição conhecida)
- TLDR de 1 frase
- Attention flags (gendrado · sensível · cultural)

### 4. Identificar atenções cross-cutting

- Léxico gendrado? Quais estágios?
- Tradições culturais? Quais linhagens?
- Temas sensíveis? Quais dias precisam CVV/SAMU?
- Bibliografia secundária relevante? (Jung · Frazer · etc.)

### 5. Emitir book-structure-map.yaml

Salvar em `outputs/{book-slug}/book-structure-map.yaml`.

Formato completo: ver `templates/input-book.md`.

---

## Output

```yaml
# outputs/{book-slug}/book-structure-map.yaml

book: {...}
trail: {density, total_days, rationale}
days: [
  {day, title, stages_covered, chapters_reference, pages, tldr, attention_flags},
  ...
]
cross_cutting: {archetypal_density, cultural_traditions, sensitive_topics, gendered_language}
bibliography_to_reference: {primary, secondary}
```

---

## Quality checklist

- [ ] Todos os N dias têm título · TLDR · pages
- [ ] Densidade escolhida tem rationale claro
- [ ] Attention flags marcados onde aplicável
- [ ] Bibliografia primária + secundária identificada
- [ ] Trail completa (não pula nem dobra estágios sem rationale)

---

## Handoff

```
📤 Handoff → Scholar (source-extractor)

book-structure-map.yaml pronto.
{N} dias mapeados · densidade {trilha}.
Attention flags: {lista}.

Próximo: extrair conteúdo denso fiel à fonte por dia.
```

---

— Task `map-book-structure` · cafe-method
