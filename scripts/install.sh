#!/usr/bin/env bash
# ═══════════════════════════════════════════════════════════════════════════════
# cafe-method · install.sh
# One-liner installer pra projetos AIOX-core
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/Agnello-Holding/cafe-method/main/scripts/install.sh | bash
#
# O script:
#   1. Detecta se está em projeto AIOX-core
#   2. Clona cafe-method em squads/
#   3. Roda sync:ide se disponível
#   4. Valida instalação
#   5. Mostra próximo passo
#
# License: MIT · Jhonas Agnello · Holding AGNELLO · 2026
# ═══════════════════════════════════════════════════════════════════════════════

set -euo pipefail

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

# Banner
cat << 'EOF'

         _                         _                         _   _               _
        (_)                       | |                       | | | |             | |
         _  ___  ___  ___ _ __ __ | |__ ______ _ __ ___   ___| |_| |__   ___   __| |
        | |/ _ \/ __|/ _ \ '_ \ ' \|  _  |     | '_ ` _ \ / _ \ __| '_ \ / _ \ / _` |
        | | (_) \__ \  __/ |_) | || | | | |____| | | | | |  __/ |_| | | | (_) | (_| |
        | |\___/|___/\___| .__/_||_|_| |_|     |_| |_| |_|\___|\__|_| |_|\___/ \__,_|
       _/ |              | |
      |__/               |_|

EOF

echo -e "${BLUE}cafe-method · installer v1.0${RESET}"
echo -e "${BLUE}─────────────────────────────────${RESET}"
echo ""

# ─────────────────────────────────────────────────────────────────────────────
# Detect AIOX-core project
# ─────────────────────────────────────────────────────────────────────────────

IS_AIOX_PROJECT=false

if [[ -d ".aiox-core" ]] || [[ -d ".aiox" ]]; then
  IS_AIOX_PROJECT=true
  echo -e "${GREEN}✓${RESET} Projeto AIOX-core detectado."
elif [[ -f "package.json" ]] && grep -q "aiox-core" package.json 2>/dev/null; then
  IS_AIOX_PROJECT=true
  echo -e "${GREEN}✓${RESET} Projeto com dependência aiox-core detectado."
else
  echo -e "${YELLOW}⚠${RESET}  Projeto AIOX-core não detectado no diretório atual."
  echo ""
  echo "   Você pode:"
  echo "   1. Inicializar AIOX-core aqui:"
  echo "      ${BLUE}npx aiox-core init .${RESET}"
  echo ""
  echo "   2. Ou instalar cafe-method standalone (sem AIOX):"
  echo "      Veja docs/installation/ no repo pra Codex / Claude Code / Web"
  echo ""
  read -p "   Prosseguir com clone simples (sem sync AIOX)? [y/N] " -n 1 -r
  echo ""
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Instalação cancelada.${RESET}"
    exit 0
  fi
fi

echo ""

# ─────────────────────────────────────────────────────────────────────────────
# Determine target path
# ─────────────────────────────────────────────────────────────────────────────

if [[ "$IS_AIOX_PROJECT" == true ]]; then
  TARGET_DIR="squads/cafe-method"
  mkdir -p squads
else
  TARGET_DIR="cafe-method"
fi

# Check if already exists
if [[ -d "$TARGET_DIR" ]]; then
  echo -e "${YELLOW}⚠${RESET}  $TARGET_DIR já existe."
  read -p "   Sobrescrever (perde mudanças locais)? [y/N] " -n 1 -r
  echo ""
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${YELLOW}Instalação cancelada.${RESET}"
    exit 0
  fi
  rm -rf "$TARGET_DIR"
fi

# ─────────────────────────────────────────────────────────────────────────────
# Clone
# ─────────────────────────────────────────────────────────────────────────────

echo -e "${BLUE}→${RESET} Clonando cafe-method..."
git clone --depth 1 https://github.com/Agnello-Holding/cafe-method.git "$TARGET_DIR" 2>&1 | tail -3

if [[ ! -d "$TARGET_DIR/squad" ]]; then
  echo -e "${RED}✗${RESET} Clone falhou ou estrutura inesperada."
  exit 1
fi

echo -e "${GREEN}✓${RESET} Clonado em $TARGET_DIR/"
echo ""

# ─────────────────────────────────────────────────────────────────────────────
# Sync IDEs (se AIOX project)
# ─────────────────────────────────────────────────────────────────────────────

if [[ "$IS_AIOX_PROJECT" == true ]]; then
  if [[ -f "package.json" ]] && grep -q '"sync:ide"' package.json 2>/dev/null; then
    echo -e "${BLUE}→${RESET} Sincronizando IDEs (npm run sync:ide)..."
    npm run sync:ide 2>&1 | tail -5
    echo -e "${GREEN}✓${RESET} IDEs sincronizadas."
  else
    echo -e "${YELLOW}⚠${RESET}  Script 'sync:ide' não encontrado em package.json."
    echo "   Rode manualmente quando AIOX-core estiver configurado:"
    echo "      ${BLUE}npm run sync:ide${RESET}"
  fi
  echo ""
fi

# ─────────────────────────────────────────────────────────────────────────────
# Validate
# ─────────────────────────────────────────────────────────────────────────────

echo -e "${BLUE}→${RESET} Validando instalação..."

REQUIRED_FILES=(
  "$TARGET_DIR/README.md"
  "$TARGET_DIR/squad/config.yaml"
  "$TARGET_DIR/squad/agents/joseph-chief.md"
  "$TARGET_DIR/squad/agents/structure-mapper.md"
  "$TARGET_DIR/squad/agents/source-extractor.md"
  "$TARGET_DIR/squad/agents/archetype-weaver.md"
  "$TARGET_DIR/squad/agents/quality-warden.md"
  "$TARGET_DIR/prompts/cafe-method-pt.md"
  "$TARGET_DIR/swipes/campbell-o-heroi-de-mil-faces/POST-PRINCIPAL.md"
)

MISSING=0
for f in "${REQUIRED_FILES[@]}"; do
  if [[ ! -f "$f" ]]; then
    echo -e "${RED}✗${RESET} Arquivo faltando: $f"
    MISSING=$((MISSING + 1))
  fi
done

if [[ $MISSING -gt 0 ]]; then
  echo -e "${RED}✗${RESET} $MISSING arquivos faltando. Instalação incompleta."
  exit 1
fi

echo -e "${GREEN}✓${RESET} Todos arquivos essenciais presentes."
echo ""

# ─────────────────────────────────────────────────────────────────────────────
# Success message
# ─────────────────────────────────────────────────────────────────────────────

echo -e "${GREEN}════════════════════════════════════════════════════${RESET}"
echo -e "${GREEN}  ✓  cafe-method instalado com sucesso${RESET}"
echo -e "${GREEN}════════════════════════════════════════════════════${RESET}"
echo ""
echo "  Squad: $TARGET_DIR/squad/"
echo "  5 agentes  ·  5 tasks  ·  2 workflows  ·  4 templates  ·  3 checklists"
echo ""

if [[ "$IS_AIOX_PROJECT" == true ]]; then
  echo "  Ativação:"
  echo -e "    ${BLUE}@joseph${RESET}                                    # orquestrador"
  echo -e "    ${BLUE}*cafe-extract \"livro\" mediada${RESET}          # pipeline completo"
  echo -e "    ${BLUE}*cafe-help${RESET}                               # manual"
  echo ""
else
  echo "  Próximos passos (sem AIOX):"
  echo "    Veja $TARGET_DIR/docs/installation/ pra integração com Codex / Claude / Web"
  echo ""
fi

echo "  Documentação:"
echo "    Tutorial:  $TARGET_DIR/docs/tutorial-first-book.md"
echo "    Comandos:  $TARGET_DIR/docs/commands.md"
echo "    Filosofia: $TARGET_DIR/docs/filosofia.md"
echo ""
echo "  Swipe de referência:"
echo "    $TARGET_DIR/swipes/campbell-o-heroi-de-mil-faces/"
echo ""
echo -e "  ${BLUE}— método cafe-method · Jhonas Agnello · MIT${RESET}"
echo -e "  ${BLUE}  github.com/Agnello-Holding/cafe-method${RESET}"
echo ""
