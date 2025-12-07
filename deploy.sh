#!/bin/bash

# Script de despliegue para Landing Page
# Uso: ./deploy.sh [mensaje de commit]

set -e

# Colores
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Función de ayuda
show_help() {
    echo -e "${GREEN}Script de Despliegue - Landing Page${NC}"
    echo ""
    echo "Uso:"
    echo "  ./deploy.sh [mensaje]     - Despliega con mensaje"
    echo "  ./deploy.sh               - Despliegue interactivo"
    echo "  ./deploy.sh --help        - Muestra esta ayuda"
    echo ""
    echo "Ejemplos:"
    echo "  ./deploy.sh \"Mejoras en hero section\""
    echo "  ./deploy.sh \"Fix: Corregir animaciones\""
    echo "  ./deploy.sh \"feat: Agregar nueva sección\""
}

# Verificar que estamos en un repositorio Git
if [ ! -d .git ]; then
    echo -e "${RED}Error: No estás en un repositorio Git${NC}"
    echo "Ejecuta primero: make setup"
    exit 1
fi

# Verificar que hay un remote configurado
if ! git remote | grep -q origin; then
    echo -e "${RED}Error: No hay remote configurado${NC}"
    echo "Ejecuta: make remote URL=\"https://github.com/gilatronico/Landing_personal.git\""
    exit 1
fi

# Mostrar ayuda si se solicita
if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    show_help
    exit 0
fi

# Mostrar estado actual
echo -e "${GREEN}=== Estado del Repositorio ===${NC}"
git status -s
echo ""

# Verificar si hay cambios
if [ -z "$(git status -s)" ]; then
    echo -e "${YELLOW}⚠ No hay cambios para commitear${NC}"
    exit 0
fi

# Obtener mensaje de commit
if [ -z "$1" ]; then
    echo -e "${YELLOW}Mensaje de commit (presiona Enter para cancelar):${NC}"
    read -r commit_message
    if [ -z "$commit_message" ]; then
        echo -e "${RED}Operación cancelada${NC}"
        exit 0
    fi
else
    commit_message="$*"
fi

# Confirmar antes de desplegar
echo -e "${YELLOW}¿Confirmar despliegue? (y/N)${NC}"
echo -e "  Mensaje: ${GREEN}$commit_message${NC}"
read -r confirm
if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo -e "${RED}Operación cancelada${NC}"
    exit 0
fi

# Proceso de despliegue
echo ""
echo -e "${GREEN}=== Iniciando Despliegue ===${NC}"

# Agregar archivos
echo -e "${GREEN}1. Agregando archivos...${NC}"
git add .

# Commit
echo -e "${GREEN}2. Haciendo commit...${NC}"
git commit -m "$commit_message"

# Push
echo -e "${GREEN}3. Subiendo a GitHub...${NC}"
git push origin main

# Éxito
echo ""
echo -e "${GREEN}✓ Despliegue completado exitosamente${NC}"
echo ""
echo -e "${YELLOW}ℹ Vercel detectará automáticamente los cambios${NC}"
echo -e "${YELLOW}  Repositorio: https://github.com/gilatronico/Landing_personal${NC}"
