# Template · Input · Book Metadata

> Preencha este template antes de rodar `*cafe-extract`. Passe ao Joseph como mensagem ou salve como `inputs/{book-slug}.yaml`.

---

## Versão YAML (recomendada · pra reuso)

```yaml
book:
  title: ""                          # obrigatório · ex: "O Herói de Mil Faces"
  author: ""                         # obrigatório · ex: "Joseph Campbell"
  edition: ""                        # opcional · ex: "Cultrix · trad. Adail Ubirajara Sobral"
  pages_total: null                  # opcional · int
  original_publication: null         # opcional · int (ano)
  language_of_source: ""             # opcional · ex: "EN"

trail:
  density: ""                        # rapida | mediada | hermetica | auto
  rationale: ""                      # opcional · por que essa densidade

audience: ""                         # ex: "comunidade de leitura amadora · iniciantes"

coordinator: ""                      # ex: "Rodrigo Feldman" · quem vai publicar
community: ""                        # ex: "Café Lendár[IA] · Circle"
publishing_platform: ""              # ex: "Circle" · "Discord" · "Slack" · "newsletter"

start_date: ""                       # opcional · ex: "2026-05-25"
language_of_extraction: "pt-BR"      # default

voice_preference: "Café Lendário"    # default · "Café Lendário" | "Núcleo X" | "voz individual"

special_instructions: ""             # opcional · ex: "evitar referências a cinema"
```

---

## Versão prosa (mais natural)

```
Livro: {autor · título · edição}
Densidade desejada: {rapida | mediada | hermetica | "sugira"}
Audiência: {descrição da comunidade alvo}
Coordenador: {nome de quem vai publicar}
Plataforma: {Circle · Discord · Slack · etc.}
Início: {data se conhecida}
Voz: {Café Lendário · ou outro · ou "configure você"}
Instruções especiais: {opcional}
```

---

## Exemplo preenchido (swipe Campbell)

```yaml
book:
  title: "O Herói de Mil Faces"
  author: "Joseph Campbell"
  edition: "Cultrix · trad. Adail Ubirajara Sobral"
  pages_total: 392
  original_publication: 1949
  language_of_source: "EN"

trail:
  density: "mediada"
  rationale: |
    17 estágios em estrutura clara. 1 sem achata · 4 sem dispersa.
    2 sem permite 1 bloco macro por semana com espaço de digestão.

audience: "Comunidade Lendária · operadores AIOX · leitores adultos"
coordinator: "Rodrigo Feldman"
community: "Café Lendár[IA]"
publishing_platform: "Circle"

start_date: "2026-05-18"
language_of_extraction: "pt-BR"
voice_preference: "Café Lendário"
special_instructions: |
  - Léxico gendrado de Campbell precisa de aviso conceitual no Dia 7 (Deusa/Tentação)
  - CVV/SAMU obrigatório no Dia 4 (Ventre da Baleia)
  - Evitar Star Wars como exemplo central · usar Campbell + Jung primariamente
```

---

## Notas

- **Campos vazios não bloqueiam** — Joseph/Cartographer perguntam o que falta
- **`density: auto`** delega a escolha pro Cartographer
- **`special_instructions`** é poderoso · use pra dar instruções de adaptação

---

— Template `input-book` · cafe-method
