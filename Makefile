.PHONY: help init setup push commit status clean deploy vercel-deploy vercel-info

# Variables
GIT_REMOTE ?= origin
GIT_BRANCH ?= main
REPO_NAME ?= Landing_personal
GITHUB_USER ?= gilatronico

# Colores para output
GREEN := \033[0;32m
YELLOW := \033[0;33m
RED := \033[0;31m
NC := \033[0m # No Color

help: ## Muestra esta ayuda
	@echo "$(GREEN)Comandos disponibles:$(NC)"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  $(YELLOW)%-15s$(NC) %s\n", $$1, $$2}'

init: ## Inicializa el repositorio Git si no existe
	@if [ ! -d .git ]; then \
		echo "$(GREEN)Inicializando repositorio Git...$(NC)"; \
		git init; \
		git branch -M $(GIT_BRANCH); \
		echo "$(GREEN)✓ Repositorio inicializado$(NC)"; \
	else \
		echo "$(YELLOW)⚠ El repositorio Git ya está inicializado$(NC)"; \
	fi

setup: init ## Configura el repositorio y crea .gitignore
	@echo "$(GREEN)Configurando repositorio...$(NC)"
	@if [ ! -f .gitignore ]; then \
		echo "$(GREEN)Creando .gitignore...$(NC)"; \
		echo "# OS" > .gitignore; \
		echo ".DS_Store" >> .gitignore; \
		echo ".DS_Store?" >> .gitignore; \
		echo "._*" >> .gitignore; \
		echo ".Spotlight-V100" >> .gitignore; \
		echo ".Trashes" >> .gitignore; \
		echo "" >> .gitignore; \
		echo "# Editor" >> .gitignore; \
		echo ".vscode/" >> .gitignore; \
		echo ".idea/" >> .gitignore; \
		echo "*.swp" >> .gitignore; \
		echo "*.swo" >> .gitignore; \
		echo "*~" >> .gitignore; \
		echo "" >> .gitignore; \
		echo "# Logs" >> .gitignore; \
		echo "*.log" >> .gitignore; \
		echo "npm-debug.log*" >> .gitignore; \
		echo "" >> .gitignore; \
		echo "# Dependencies" >> .gitignore; \
		echo "node_modules/" >> .gitignore; \
		echo "" >> .gitignore; \
		echo "# Build" >> .gitignore; \
		echo "dist/" >> .gitignore; \
		echo "build/" >> .gitignore; \
		echo "" >> .gitignore; \
		echo "# Environment" >> .gitignore; \
		echo ".env" >> .gitignore; \
		echo ".env.local" >> .gitignore; \
		echo "" >> .gitignore; \
		echo "# Temporary files" >> .gitignore; \
		echo "*.tmp" >> .gitignore; \
		echo "*.temp" >> .gitignore; \
		echo "$(GREEN)✓ .gitignore creado$(NC)"; \
	else \
		echo "$(YELLOW)⚠ .gitignore ya existe$(NC)"; \
	fi

status: ## Muestra el estado del repositorio
	@echo "$(GREEN)Estado del repositorio:$(NC)"
	@git status

add: ## Agrega todos los archivos al staging
	@echo "$(GREEN)Agregando archivos...$(NC)"
	@git add .
	@echo "$(GREEN)✓ Archivos agregados$(NC)"

commit: ## Hace commit de los cambios (usa: make commit M="mensaje")
	@if [ -z "$(M)" ]; then \
		echo "$(RED)Error: Debes proporcionar un mensaje de commit$(NC)"; \
		echo "Uso: make commit M=\"tu mensaje de commit\""; \
		exit 1; \
	fi
	@if [ -z "$$(git status -s)" ]; then \
		echo "$(YELLOW)⚠ No hay cambios para commitear$(NC)"; \
		exit 0; \
	fi
	@echo "$(GREEN)Haciendo commit...$(NC)"
	@git commit -m "$(M)"
	@echo "$(GREEN)✓ Commit realizado$(NC)"

push: ## Sube los cambios a GitHub
	@echo "$(GREEN)Subiendo cambios a GitHub...$(NC)"
	@if ! git remote | grep -q $(GIT_REMOTE); then \
		echo "$(YELLOW)⚠ No hay remote configurado. Configurando...$(NC)"; \
		echo "$(YELLOW)Por favor, edita el Makefile y configura GITHUB_USER y REPO_NAME$(NC)"; \
		echo "$(YELLOW)O ejecuta: git remote add origin https://github.com/$(GITHUB_USER)/$(REPO_NAME).git$(NC)"; \
		exit 1; \
	fi
	@git push -u $(GIT_REMOTE) $(GIT_BRANCH)
	@echo "$(GREEN)✓ Cambios subidos a GitHub$(NC)"

deploy: ## Agrega, hace commit y push (usa: make deploy M="mensaje")
	@if [ -z "$(M)" ]; then \
		echo "$(RED)Error: Debes proporcionar un mensaje de commit$(NC)"; \
		echo "Uso: make deploy M=\"tu mensaje de commit\""; \
		echo "O usa: make quick-deploy (para mensaje interactivo)"; \
		exit 1; \
	fi
	@if [ -z "$$(git status -s)" ]; then \
		echo "$(YELLOW)⚠ No hay cambios para commitear$(NC)"; \
		exit 0; \
	fi
	@echo "$(GREEN)Agregando archivos...$(NC)"
	@git add .
	@echo "$(GREEN)Haciendo commit...$(NC)"
	@git commit -m "$(M)"
	@echo "$(GREEN)Subiendo a GitHub...$(NC)"
	@git push $(GIT_REMOTE) $(GIT_BRANCH)
	@echo "$(GREEN)✓ Despliegue completado$(NC)"

quick-deploy: ## Despliegue rápido con mensaje interactivo (usa: make quick-deploy)
	@echo "$(GREEN)=== Despliegue Rápido ===$(NC)"
	@echo "$(YELLOW)Archivos modificados:$(NC)"
	@git status -s || true
	@echo ""
	@read -p "Mensaje de commit: " msg; \
	if [ -z "$$msg" ]; then \
		echo "$(RED)Error: El mensaje no puede estar vacío$(NC)"; \
		exit 1; \
	fi; \
	echo "$(GREEN)Agregando archivos...$(NC)"; \
	git add .; \
	echo "$(GREEN)Haciendo commit...$(NC)"; \
	git commit -m "$$msg"; \
	echo "$(GREEN)Subiendo a GitHub...$(NC)"; \
	git push $(GIT_REMOTE) $(GIT_BRANCH); \
	echo "$(GREEN)✓ Despliegue completado$(NC)"

sync: pull push ## Sincroniza: descarga cambios y luego sube (usa: make sync)
	@echo "$(GREEN)✓ Sincronización completada$(NC)"

changes: ## Muestra los cambios pendientes antes de commit
	@echo "$(GREEN)=== Cambios Pendientes ===$(NC)"
	@echo "$(YELLOW)Archivos modificados:$(NC)"
	@git status -s || echo "No hay cambios"
	@echo ""
	@echo "$(YELLOW)Diferencias:$(NC)"
	@git diff --stat || echo "No hay diferencias"

remote: ## Configura el remote de GitHub (usa: make remote URL="https://github.com/user/repo.git")
	@if [ -z "$(URL)" ]; then \
		echo "$(RED)Error: Debes proporcionar la URL del repositorio$(NC)"; \
		echo "Uso: make remote URL=\"https://github.com/usuario/repo.git\""; \
		exit 1; \
	fi
	@if git remote | grep -q $(GIT_REMOTE); then \
		echo "$(YELLOW)Actualizando remote...$(NC)"; \
		git remote set-url $(GIT_REMOTE) $(URL); \
	else \
		echo "$(GREEN)Agregando remote...$(NC)"; \
		git remote add $(GIT_REMOTE) $(URL); \
	fi
	@echo "$(GREEN)✓ Remote configurado: $(URL)$(NC)"

create-repo: ## Crea el repositorio en GitHub (requiere GitHub CLI: gh)
	@if ! command -v gh &> /dev/null; then \
		echo "$(RED)Error: GitHub CLI (gh) no está instalado$(NC)"; \
		echo "Instala desde: https://cli.github.com/"; \
		exit 1; \
	fi
	@echo "$(GREEN)Creando repositorio en GitHub...$(NC)"
	@gh repo create $(REPO_NAME) --public --source=. --remote=$(GIT_REMOTE) --push || true
	@echo "$(GREEN)✓ Repositorio creado en GitHub$(NC)"

pull: ## Descarga los últimos cambios de GitHub
	@echo "$(GREEN)Descargando cambios...$(NC)"
	@git pull $(GIT_REMOTE) $(GIT_BRANCH)
	@echo "$(GREEN)✓ Cambios descargados$(NC)"

log: ## Muestra el historial de commits
	@git log --oneline --graph --decorate -10

clean: ## Limpia archivos temporales y no rastreados
	@echo "$(YELLOW)Limpiando archivos...$(NC)"
	@git clean -fd
	@echo "$(GREEN)✓ Limpieza completada$(NC)"

reset: ## Resetea los cambios no commiteados (CUIDADO)
	@echo "$(RED)⚠ Esto eliminará todos los cambios no commiteados$(NC)"
	@read -p "¿Estás seguro? (y/N): " confirm && [ "$$confirm" = "y" ] || exit 1
	@git reset --hard HEAD
	@echo "$(GREEN)✓ Reset completado$(NC)"

info: ## Muestra información del repositorio
	@echo "$(GREEN)=== Información del Repositorio ===$(NC)"
	@echo "Branch actual: $(shell git branch --show-current 2>/dev/null || echo 'N/A')"
	@echo "Remote: $(shell git remote get-url $(GIT_REMOTE) 2>/dev/null || echo 'No configurado')"
	@echo "Último commit: $(shell git log -1 --format='%h - %s' 2>/dev/null || echo 'N/A')"
	@echo "Archivos rastreados: $(shell git ls-files | wc -l | tr -d ' ')"
	@echo "Commits pendientes de push: $(shell git rev-list --count $(GIT_REMOTE)/$(GIT_BRANCH)..HEAD 2>/dev/null || echo '0')"

vercel-deploy: deploy ## Despliega a GitHub (Vercel se actualiza automáticamente)
	@echo "$(GREEN)✓ Cambios subidos a GitHub$(NC)"
	@echo "$(YELLOW)ℹ Vercel detectará automáticamente los cambios y desplegará$(NC)"
	@echo "$(YELLOW)   Visita: https://vercel.com/dashboard$(NC)"

vercel-info: ## Muestra información sobre el despliegue en Vercel
	@echo "$(GREEN)=== Información Vercel ===$(NC)"
	@echo "Repositorio: https://github.com/$(GITHUB_USER)/$(REPO_NAME)"
	@echo ""
	@echo "$(YELLOW)Para conectar con Vercel:$(NC)"
	@echo "1. Ve a https://vercel.com/new"
	@echo "2. Importa el repositorio: $(GITHUB_USER)/$(REPO_NAME)"
	@echo "3. Vercel detectará automáticamente los archivos HTML"
	@echo "4. Configura:"
	@echo "   - Framework Preset: Other"
	@echo "   - Build Command: (dejar vacío)"
	@echo "   - Output Directory: ."
	@echo "5. Cada push a GitHub desplegará automáticamente"
	@echo ""
	@if command -v vercel &> /dev/null; then \
		echo "$(GREEN)✓ Vercel CLI está instalado$(NC)"; \
		vercel --version; \
	else \
		echo "$(YELLOW)ℹ Vercel CLI no está instalado (opcional)$(NC)"; \
		echo "   Instala con: npm i -g vercel"; \
	fi

vercel-link: ## Enlaza el proyecto con Vercel (requiere Vercel CLI)
	@if ! command -v vercel &> /dev/null; then \
		echo "$(RED)Error: Vercel CLI no está instalado$(NC)"; \
		echo "Instala con: npm i -g vercel"; \
		exit 1; \
	fi
	@echo "$(GREEN)Enlazando proyecto con Vercel...$(NC)"
	@vercel link
	@echo "$(GREEN)✓ Proyecto enlazado$(NC)"

vercel-prod: deploy ## Despliega a producción en Vercel (requiere Vercel CLI)
	@if ! command -v vercel &> /dev/null; then \
		echo "$(YELLOW)⚠ Vercel CLI no está instalado$(NC)"; \
		echo "$(YELLOW)   Los cambios se subieron a GitHub$(NC)"; \
		echo "$(YELLOW)   Vercel se actualizará automáticamente si está conectado$(NC)"; \
		exit 0; \
	fi
	@echo "$(GREEN)Desplegando a producción en Vercel...$(NC)"
	@vercel --prod
	@echo "$(GREEN)✓ Despliegue a producción completado$(NC)"
