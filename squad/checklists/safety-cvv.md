# Checklist · Safety CVV/SAMU

> **Aplicado por:** `quality-warden` (Sentinel)
> **Refere-se a:** Check 3 do `quality-gate.md`
> **Princípio:** Não substituir cuidado profissional em saúde mental.

---

## Princípio

> **Quando o conteúdo toca saúde mental aguda, aviso formal é obrigatório.**
>
> Esta roda dá nomes ao que se atravessa. Não substitui psicoterapia, psiquiatria, ou cuidado emergencial.

---

## Triggers que exigem aviso CVV/SAMU

### Triggers explícitos

- [ ] Suicídio · ideação suicida
- [ ] Auto-mutilação
- [ ] Depressão maior · transtorno bipolar
- [ ] Burnout grave
- [ ] Crise espiritual aguda
- [ ] Luto profundo / luto patológico

### Triggers arquetípicos (correlato clínico forte)

Estágios míticos que ressoam com quadros clínicos:

| Estágio mítico | Correlato clínico potencial |
|---|---|
| **Ventre da Baleia** (Campbell · estágio 5) | Depressão maior · burnout severo · crise de identidade |
| **Recusa do Retorno** (Campbell · estágio 12) | Reclusão pós-trauma · dificuldade de reintegração social |
| **Estrada das Provas** prolongada | Esgotamento crônico · luto em camadas |
| **Encontro com a Sombra** (Jung) | Quadros depressivos · confronto com material inconsciente intenso |
| **Nigredo** (alquimia) | Fase escura · depressão clínica · noite escura da alma |
| **Sukhavati** retido / vazio nihilista | Anhedonia · transtornos do humor |

Se o dia em extração toca qualquer desses, **CVV/SAMU obrigatório**.

---

## Formato do aviso

### Versão padrão (recomendada)

```markdown
⚠️ {Frase contextualizadora curta · 1 linha · ex: "Esta é a pergunta mais delicada da semana."}
Se ela tocar em ideação suicida ou saúde mental aguda: **CVV 188 (24h) / SAMU 192**.
Esta roda atravessa nomes — não substitui psicoterapia, psiquiatria, ou cuidado emergencial.
```

### Versão expandida (quando estágio é particularmente sensível)

```markdown
⚠️ Atenção emocional.

O estágio que estamos atravessando hoje toca território de saúde mental aguda
({nome do quadro}). Se algo aqui ressoar com algo que você está vivendo agora —
ou alguém próximo está vivendo — saiba que:

- **CVV (Centro de Valorização da Vida)** atende 24h pelo número **188**.
- **SAMU** atende emergências pelo número **192**.
- Psicoterapia e psiquiatria são os profissionais adequados pra acompanhamento.

Esta roda dá linguagem ao que se atravessa. Não substitui cuidado profissional.
```

### Versão internacional (quando audiência fora do Brasil)

Para audiências fora do Brasil, adaptar com hotlines locais. Manter estrutura:

```markdown
⚠️ {context}.
{Local crisis hotline · phone} / {Local emergency · phone}.
This space gives language to what you're crossing — it doesn't replace
psychotherapy, psychiatry, or emergency care.
```

---

## Posição estrutural

Aviso aparece **antes ou junto** da pergunta sensível, **nunca depois**:

```markdown
{Conteúdo denso do dia}

⚠️ Aviso CVV/SAMU

**🜂 Imagem-arquétipo do dia:** *...*

**❓ Pergunta de Joseph:**
> *{pergunta sensível}*

> *"{paradoxo}"*
```

Razão: o leitor que estiver em crise precisa ver o número de emergência antes da pergunta arquetípica · não depois. Quem só veria depois pode já ter sido tocado por dimensão crítica.

---

## Critério PASS

- [ ] Aviso explícito presente quando trigger ativo
- [ ] CVV 188 explicitamente nomeado
- [ ] SAMU 192 explicitamente nomeado (os 2 juntos · não um sem o outro)
- [ ] Frase de limite presente ("não substitui psicoterapia, psiquiatria, ou cuidado emergencial")
- [ ] Aviso antes/junto da pergunta sensível
- [ ] Tom respeitoso · não pânico · não minimização

## Critério VETO

- [ ] Trigger presente mas aviso ausente
- [ ] Aviso com só CVV (sem SAMU) ou vice-versa
- [ ] Aviso minimizado ("se quiser, pode ligar")
- [ ] Aviso depois da pergunta sensível
- [ ] Linguagem que substitui cuidado profissional ("essa pergunta vai te curar")

**Rotear veto para:** `archetype-weaver` (Weaver)

---

## Quando NÃO usar (também importante)

Nem todo conteúdo denso merece aviso CVV/SAMU. Inflar o aviso onde não precisa o esvazia.

**NÃO use quando:**
- Estágio toca dificuldade comum (frustração · cansaço comum · indecisão)
- Tema é filosófico abstrato sem correlato clínico
- Autor não trabalha dimensão sensível

**Use quando:**
- Há correlato clínico claro
- Estágio toca quadro de saúde mental real
- Linguagem do autor evoca crise (morte simbólica · auto-aniquilação · desespero)

---

## Recursos por país

Quando audiência internacional, ajuste:

| País | Crisis Hotline | Emergency |
|---|---|---|
| Brasil 🇧🇷 | CVV · 188 | SAMU · 192 |
| EUA 🇺🇸 | 988 Suicide & Crisis Lifeline | 911 |
| Portugal 🇵🇹 | SOS Voz Amiga · 213 544 545 | 112 |
| Espanha 🇪🇸 | Teléfono de la Esperanza · 717 003 717 | 112 |
| Reino Unido 🇬🇧 | Samaritans · 116 123 | 999 |

Adicionar conforme audiência da extração.

---

— Checklist `safety-cvv` · cafe-method
