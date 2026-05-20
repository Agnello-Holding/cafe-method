# Tutorial · Seu Primeiro Livro com cafe-method

> Passo-a-passo · do zero ao bundle publicado · ~1h de trabalho efetivo.

---

## Pré-requisitos

- [ ] Acesso a um LLM (Claude.ai · ChatGPT · Gemini · qualquer um)
- [ ] Um livro denso em mente (recomendado: começar com livro que você JÁ LEU · facilita revisão)
- [ ] Uma comunidade onde publicar (Circle · Discord · Slack · grupo WhatsApp · newsletter · sua escolha)
- [ ] 1 hora de tempo focado

**Não precisa:** instalar nada · ter conta paga · saber programação · ter o livro físico.

---

## Passo 1 · Escolha do livro (5 min)

Pra seu primeiro extract, escolha um livro com:

- **Estrutura clara** (capítulos numerados · fases definidas · ou aforismos curtos)
- **Densidade conceitual** (não apenas narrativa · tem ideias trabalháveis)
- **200-400 páginas** (sweet spot da Trilha Mediada)
- **Você já leu** (facilita revisar a fidelidade da extração)

**Sugestões pra primeiro extract:**

| Livro | Trilha | Por que |
|---|---|---|
| Joseph Campbell · *O Herói de Mil Faces* | Mediada | Já temos swipe completo · você compara |
| Marco Aurélio · *Meditações* | Mediada | Aforismos curtos · estrutura clara |
| Ryan Holiday · *O Obstáculo é o Caminho* | Rápida | Curto · denso · 5 dias |
| Viktor Frankl · *Em Busca de Sentido* | Mediada | Estrutura clara · tema universal |
| Brené Brown · *A Coragem de Ser Imperfeito* | Mediada | Acessível · 10 capítulos |

---

## Passo 2 · Carregue o método (3 min)

### Opção A · Claude.ai web (recomendado pro primeiro)

1. Abra [Claude.ai](https://claude.ai)
2. Comece nova conversa
3. Abra [`prompts/cafe-method-pt.md`](../prompts/cafe-method-pt.md) no GitHub
4. Botão **Copy raw content** ou copie tudo manualmente
5. Cole na conversa do Claude
6. Aperte enter

Claude vai responder com greeting:

```
🧠 Joseph (cafe-method · v1.0) online.

Sou companheiro de leitura densa...

Pra começar, me passe:
  · Livro (autor · título · edição)
  · Densidade (rapida | mediada | hermetica | "sugira")
  · Audiência alvo
  · Coordenador (opcional)
```

### Opção B · ChatGPT (similar)

Mesmo passo · cola o prompt · enter.

### Opção C · AIOX (se já tem instalado)

```bash
@joseph
```

Detalhes em [`installation/aiox.md`](installation/aiox.md).

---

## Passo 3 · Passe o livro (2 min)

Cole no formato:

```
Livro: Marco Aurélio · Meditações
Edição: tradução Alex Marins · Martin Claret
Densidade: mediada
Audiência: comunidade de leitura amadora · iniciantes em estoicismo
Coordenador: [seu nome]
Plataforma: Discord
```

Joseph (via Cartographer) vai responder com **proposta de mapa**:

```
🗺️ Cartographer aqui.

Marco Aurélio · Meditações · 12 livros breves de aforismos pessoais.
Trilha mediada (10 dias) cabe bem.

Sugestão de divisão:
  Sem 1 (Livros I-VI) · 5 dias
  Sem 2 (Livros VII-XII) · 5 dias

Quer ver o map completo antes de prosseguir?
```

Responda **sim** ou peça ajustes.

---

## Passo 4 · Confirmação do mapa (5 min)

Cartographer produz o `book-structure-map` completo:

```yaml
book:
  title: "Meditações"
  author: "Marco Aurélio"
  ...

days:
  - day: 1
    title: "Livro I · Dívidas a Família e Mentores"
    chapters_reference: "Livro I (completo)"
    pages: "pp. 23-37"
    tldr: "Marco lista 17 figuras que o formaram..."
    ...
  - day: 2
    ...
```

**Revise:**
- Os títulos dos dias fazem sentido?
- A divisão respeita o livro?
- Pontos de atenção foram identificados?

Se OK, mande: *"OK · prosseguir com extração"*.

Se não, ajuste: *"Trocar dia 5 pra cobrir Livro IV inteiro em vez de só capítulos 1-10"*.

---

## Passo 5 · Geração dos dias (30-50 min)

Joseph delega ao Scholar, depois Weaver, depois Sentinel · um dia por vez.

**Você vai ver, dia a dia:**

```
📚 Scholar: extraindo Dia 1...
[1400 palavras de conteúdo denso]

🌀 Weaver: tecendo arquetípico...
[imagem + pergunta + paradoxo]

🛡️ Sentinel: quality gate...
✅ 5/5 PASS

📚 Scholar: extraindo Dia 2...
```

**Se LLM travar (limite de contexto):**

Use `*cafe-day <N>` pra gerar um por vez:

```
*cafe-day 1
[recebe dia 1]
*cafe-day 2
[recebe dia 2]
...
```

---

## Passo 6 · Bundle final (5 min)

Joseph compõe os 4 arquivos finais:

```
✅ Bundle pronto · Marco Aurélio · Meditações · trilha mediada

📦 outputs/marco-aurelio-meditacoes/2026-05-20/
   ├── POST-PRINCIPAL.md       (820 palavras)
   ├── COMENTARIOS-10-DIAS.md  (14.300 palavras totais)
   ├── CRONOGRAMA.md
   └── DM-COORDENADOR.md

Quality gate: 10/10 PASS
Citações: 18 verificáveis · 42 parafraseadas
CVV/SAMU: presente nos Dias 4 e 8

Próximos passos sugeridos:
1. Revisar POST PRINCIPAL com olhar de coordenador
2. Mandar DM ao publicador
3. Publicar conforme cronograma
```

**Copie cada arquivo** pra um lugar seguro (Drive · Notion · Obsidian · onde for).

---

## Passo 7 · Revisão (10 min)

**Antes de publicar:**

- [ ] Leia o POST PRINCIPAL com olho de coordenador · soa como você quer?
- [ ] Pegue 1-2 dias e cruze com o livro físico · citações batem?
- [ ] CVV/SAMU presente onde precisava?
- [ ] Tom da comunidade? Voz adequada?
- [ ] Cronograma realista pra sua audiência?

**Se algo não bateu:**
- Refaça dia específico: `*cafe-day <N> com "<feedback>"`
- Ajuste voz: `--voz="..."`
- Mude trilha (extreme): nova rodada com densidade diferente

---

## Passo 8 · Publicação (10 min)

### Se você é o coordenador

1. Cole POST PRINCIPAL na plataforma escolhida (Circle / Discord / Slack / etc.)
2. Publique no horário sugerido pelo cronograma (9h-12h BRT recomendado)
3. Solte 1 comentário por dia sob o post principal · sequencialmente
4. Acompanhe engajamento · responda quando relevante

### Se há outro coordenador

1. Compartilhe os 4 arquivos com o coordenador (Drive · email · etc.)
2. Mande a DM pronta (`DM-COORDENADOR.md` é template — ajuste tom pessoal)
3. Combine quem publica · quando · em que horário
4. Acompanhe da margem

---

## Passo 9 · Aprendizados (sessão de revisão · opcional · 15 min)

Depois que a trilha rodar, revise:

- O que funcionou bem? (engajamento · ressonância · qualidade de discussão)
- O que não funcionou? (qual dia teve menos resposta · qual gerou ruído · qual confundiu)
- Você usaria de novo? (para outro livro · ou já é o suficiente?)

**Se há lições aprendidas:** considere submeter o swipe como contribuição (veja [`CONTRIBUTING.md`](../CONTRIBUTING.md)).

---

## Tempo total estimado

- Escolha do livro: 5 min
- Carga do método: 3 min
- Input do livro: 2 min
- Confirmação do mapa: 5 min
- Geração dos dias: 30-50 min ⏳
- Bundle: 5 min
- Revisão: 10 min
- Publicação: 10 min
- **TOTAL ~ 1 hora 10 min** (excluindo geração que roda em background)

---

## Erros comuns no primeiro extract

| Erro | Como evitar |
|---|---|
| Escolher livro que você não leu | Comece com livro que você conhece bem |
| Densidade errada | Use `auto` no primeiro · deixa Cartographer decidir |
| Não revisar antes de publicar | Reserve 10 min de revisão · não pule |
| Comunidade errada | Confirme antes que a comunidade quer esse formato |
| Esperar engajamento alto imediato | Comunidades demoram pra adotar formato novo · 1-2 trilhas até pegarem o ritmo |

---

## Próximo livro

Quando o primeiro rodar, escolha o próximo:

- Livro mais denso (sobe densidade · Mediada → Hermética)
- Outro idioma (testa adaptação)
- Audiência diferente (testa customização)
- Livro que você nunca leu (testa fidelidade · use livro físico como referência paralela)

---

## Dúvidas?

- Issues: [github.com/Agnello-Holding/cafe-method/issues](https://github.com/Agnello-Holding/cafe-method/issues)
- Discussions: [github.com/Agnello-Holding/cafe-method/discussions](https://github.com/Agnello-Holding/cafe-method/discussions)
- Swipe de referência: [`swipes/campbell-o-heroi-de-mil-faces/`](../swipes/campbell-o-heroi-de-mil-faces/)

---

— `tutorial-first-book.md` · cafe-method v1.0 · 2026-05-20
