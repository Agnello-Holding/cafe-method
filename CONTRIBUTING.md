# Contribuindo para o cafe-method

> Toda contribuição honesta é bem-vinda. Especialmente as que apontam onde o método falha.

---

## 4 formas de contribuir

### 1. Submeter um swipe novo (mais valioso)

Você extraiu um livro usando o método? Submeta como swipe público.

**O que vai em um swipe completo:**
```
swipes/<slug-do-livro>/
├── METADATA.yaml          ← autor · trilha · densidade · idioma · contexto
├── POST-PRINCIPAL.md      ← panorama + estrutura
├── COMENTARIOS-N-DIAS.md  ← capítulos sequenciais densos
└── DM-COORDENADOR.md      ← texto pro publicador (opcional)
```

**Checklist antes de submeter:**
- [ ] Rodou pelo `quality-warden` (5 checks · ver `squad/checklists/quality-gate.md`)
- [ ] Citações são fiéis à fonte (parafraseou onde não tinha certeza)
- [ ] CVV/SAMU presente quando tema toca saúde mental aguda
- [ ] Sem prescrição (devolveu pergunta, não receita)
- [ ] Léxico gendrado (se houver) traduzido com aviso conceitual
- [ ] `METADATA.yaml` preenchido

Abra um Pull Request com o swipe completo.

### 2. Melhorias nos agentes/tasks/templates

Encontrou um caso onde:
- O Cartographer mapeia mal certo tipo de livro?
- O Scholar acha exemplos errados pra autor X?
- O Weaver insiste em paradoxos que não funcionam?
- O Sentinel deixa passar algo que deveria ter bloqueado?

Abra uma issue descrevendo o caso. Idealmente com:
- Livro usado
- Input dado
- Output recebido
- Por que está errado

Se já tiver fix proposto, abra um PR.

### 3. Traduções

Idiomas prioritários:
- 🇺🇸 EN (em construção · esqueleto em `prompts/cafe-method-en.md` e `README.en.md`)
- 🇪🇸 ES
- 🇨🇳 ZH

Quem traduzir todas as docs principais de um idioma vira **maintainer linguístico** desse idioma.

### 4. Reports de falha (mais útil que reports de sucesso)

Onde o método **não funcionou**? Por quê?

Exemplos valiosos:
- Livro de filosofia hermética (Heidegger · Wittgenstein) onde Trilha Hermética travou
- Livro narrativo (romance) onde o método não se encaixa
- Comunidade que rejeitou o tom · o que sinalizou rejeição
- Tema cultural específico que o método achatou (apropriação cultural)

Abra issue com tag `report-of-failure`. Estes reports orientam mais o desenvolvimento futuro do que casos de sucesso.

---

## Padrões de código/documentação

### Voz e tom

- **Sem marketing** — nada de "destrave", "revolucione", "transforme sua leitura"
- **Sem prescrição** — devolva pergunta, não receita
- **Sem invenção** — não atribua frases ao autor sem ter certeza; parafraseie indicando origem
- **Honestidade arquetípica** — não simule profundidade; se algo é raso, marque como raso

### Estrutura de arquivos

- Markdown puro (`.md`)
- Frontmatter YAML quando aplicável
- Nomes em `kebab-case` (`source-extractor.md`, não `source_extractor.md` nem `sourceExtractor.md`)
- Português por padrão · EN em arquivos `*.en.md`

### Commits

Estilo Conventional Commits:

```
feat(squad): add archetype-weaver agent
fix(scholar): correct citation format for translated editions
docs(install): add Codex CLI standalone flow
chore: bump version to 1.1.0
swipe: add Marco Aurélio · Meditações (trilha mediada)
```

### Pull Requests

Template:
```markdown
## O que mudou

[Descrição curta]

## Por quê

[Motivação · que problema resolve]

## Como testar

[Passos pra reproduzir / validar]

## Checklist

- [ ] Quality gate roda sem erro
- [ ] Docs atualizadas (se aplicável)
- [ ] Adicionado ao CHANGELOG.md
- [ ] Crédito a contribuidor adicionado (se aplicável)
```

---

## Governança

Este é um projeto **maintained by community · steered by author**.

- Decisões de produto: Jhonas Agnello (criador) tem palavra final
- Decisões técnicas: discussão aberta no PR · merge por consenso
- Decisões éticas (saúde mental · apropriação cultural · viés): veto coletivo · qualquer maintainer pode bloquear

### Maintainers

| Nome | Função | Idioma |
|---|---|---|
| [@jhonasagnello](https://github.com/jhonasagnello) | Criador · final word | PT-BR · EN |
| _vagas abertas_ | Maintainer linguístico | EN · ES · ZH |

---

## Código de conduta

Em uma frase: **trate cada contribuidor como você trataria alguém no Café Lendário · respeito · curiosidade · honestidade arquetípica · sem prescrição.**

Comportamentos não-tolerados:
- Marketing disfarçado de contribuição
- Promoção de cursos/produtos no PR
- Insistência em "destravar" / linguagem motivacional
- Apropriação cultural sem nomear linhagem
- Substituição de cuidado profissional em saúde mental

---

## Reconhecimento

Toda contribuição aceita é creditada em [AUTHORS.md](AUTHORS.md).

Quem submeter 3+ swipes ou 5+ PRs de melhoria vira **contribuidor reconhecido** com perfil próprio em `docs/contributors/`.

---

— `CONTRIBUTING.md` · cafe-method v1.0 · 2026-05-20
