# 🚀 Landing Page - Alejandro Gilabert

Portafolio personal con dos versiones: Artista y Profesional.

## 📋 Estructura del Proyecto

```
.
├── index_generic.html      # Landing page de selección
├── index-artist.html       # Portafolio Artista
├── index-professional.html # Portafolio Profesional
├── images/                 # Imágenes del proyecto
├── Makefile               # Comandos para gestión de Git/GitHub
└── README.md              # Este archivo
```

## 🛠️ Uso del Makefile

El Makefile incluye comandos útiles para gestionar el repositorio de GitHub.

### Comandos Disponibles

#### Configuración Inicial

```bash
# Ver todos los comandos disponibles
make help

# Inicializar repositorio Git (si no existe)
make init

# Configurar repositorio y crear .gitignore
make setup

# Configurar el remote de GitHub
make remote URL="https://github.com/gilatronico/Landing_personal.git"
```

#### Trabajo Diario

```bash
# Ver el estado del repositorio
make status

# Agregar todos los archivos al staging
make add

# Hacer commit (requiere mensaje)
make commit M="Tu mensaje de commit"

# Subir cambios a GitHub
make push

# Todo en uno: add + commit + push
make deploy M="Tu mensaje de commit"
```

#### Otros Comandos Útiles

```bash
# Descargar últimos cambios
make pull

# Ver historial de commits
make log

# Ver información del repositorio
make info

# Limpiar archivos no rastreados
make clean
```

## 🚀 Inicio Rápido

### Primera vez (nuevo repositorio)

1. **Configurar el repositorio:**
   ```bash
   make setup
   ```

2. **Configurar el remote de GitHub:**
   ```bash
   # Opción 1: Manualmente
   make remote URL="https://github.com/gilatronico/Landing_personal.git"
   
   # Opción 2: Si tienes GitHub CLI instalado
   make create-repo
   ```

3. **Hacer el primer commit y push:**
   ```bash
   make deploy M="Initial commit"
   ```

### Trabajo diario

```bash
# Después de hacer cambios
make deploy M="Descripción de los cambios"
```

## ⚙️ Configuración

Puedes editar las variables en el Makefile según tus necesidades:

```makefile
GIT_REMOTE ?= origin      # Nombre del remote
GIT_BRANCH ?= main        # Rama principal
REPO_NAME ?= Landing_personal      # Nombre del repositorio
GITHUB_USER ?= gilatronico # Tu usuario de GitHub
```

## 📝 Ejemplos de Uso

### Ejemplo 1: Primer despliegue

```bash
# 1. Configurar repositorio
make setup

# 2. Agregar remote
make remote URL="https://github.com/gilatronico/Landing_personal.git"

# 3. Hacer commit y push
make deploy M="Initial commit: Landing page completa"
```

### Ejemplo 2: Actualización diaria

```bash
# Después de hacer cambios en los archivos
make deploy M="Mejoras en hero section y animaciones"
```

### Ejemplo 3: Solo commit sin push

```bash
make add
make commit M="WIP: Trabajando en nuevas features"
# ... seguir trabajando ...
make push
```

## 🔧 Requisitos

- **Git** instalado
- **Make** (generalmente preinstalado en macOS/Linux)
- **GitHub CLI (opcional)** para `make create-repo`

## 📚 Más Información

- [Documentación de Git](https://git-scm.com/doc)
- [GitHub Docs](https://docs.github.com)
- [Makefile Tutorial](https://makefiletutorial.com/)

## 🐛 Solución de Problemas

### Error: "No hay remote configurado"

```bash
# Configura el remote primero
make remote URL="https://github.com/gilatronico/Landing_personal.git"
```

### Error: "GitHub CLI no está instalado"

Para usar `make create-repo`, instala GitHub CLI:
- macOS: `brew install gh`
- Linux: Ver [instrucciones oficiales](https://cli.github.com/)

### Ver información del repositorio

```bash
make info
```

---

**Desarrollado con ❤️ por Alejandro Gilabert**
