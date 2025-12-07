# 🚀 Landing Page - Alejandro Gilabert

Portafolio personal con dos versiones: **Artista** y **Profesional**.

## 📋 Estructura del Proyecto

```
.
├── index.html              # Landing page principal (selección Artista/Profesional)
├── index-artist.html       # Portafolio Artista
├── index-professional.html # Portafolio Profesional
├── images/                 # Imágenes del proyecto
├── vercel.json            # Configuración de Vercel
├── package.json           # Scripts de desarrollo
└── README.md              # Este archivo
```

## 🚀 Deploy con GitHub + Vercel

### Paso 1: Inicializar Git (si no está inicializado)

```bash
# Inicializar repositorio Git
git init

# Agregar todos los archivos
git add .

# Hacer primer commit
git commit -m "Initial commit: Landing page completa"
```

### Paso 2: Crear repositorio en GitHub

1. Ve a https://github.com/new
2. Crea un nuevo repositorio (ej: `Landing_personal`)
3. **NO** inicialices con README, .gitignore o licencia (ya los tienes)

### Paso 3: Conectar y subir a GitHub

```bash
# Agregar remote (reemplaza con tu URL)
git remote add origin https://github.com/gilatronico/Landing_personal.git

# Cambiar a rama main (si es necesario)
git branch -M main

# Subir código
git push -u origin main
```

### Paso 4: Desplegar en Vercel

1. Ve a https://vercel.com/new
2. **Import Git Repository**: Selecciona tu repositorio de GitHub
3. **Configure Project**:
   - **Framework Preset**: `Other`
   - **Root Directory**: `.` (dejar vacío o poner punto)
   - **Build Command**: (dejar **VACÍO**)
   - **Output Directory**: `.` (dejar vacío o poner punto)
   - **Install Command**: (dejar **VACÍO**)
4. Click en **Deploy**

### Paso 5: Verificar

Una vez desplegado, Vercel te dará una URL. Deberías poder acceder a:
- `/` → Landing page principal
- `/artist` → Portafolio Artista
- `/professional` → Portafolio Profesional

## 🛠️ Desarrollo Local

### Scripts disponibles (package.json)

```bash
# Servir el sitio localmente en http://localhost:3000
npm run dev

# O usar directamente
npx serve . -p 3000
```

### Comandos Git útiles

```bash
# Ver estado
git status

# Agregar cambios
git add .

# Commit
git commit -m "Descripción de cambios"

# Push (Vercel desplegará automáticamente)
git push origin main
```

## 📝 Configuración de Vercel

El archivo `vercel.json` está configurado para:

- **Servir archivos estáticos** desde la raíz del proyecto
- **Routing automático**:
  - `/` → `index.html`
  - `/artist` → `index-artist.html`
  - `/professional` → `index-professional.html`
- **Headers de seguridad** configurados

## 🔄 Workflow de Deploy

Después de la configuración inicial, cada push a GitHub desplegará automáticamente:

```bash
# 1. Hacer cambios en los archivos
# 2. Agregar y commitear
git add .
git commit -m "Descripción de cambios"

# 3. Push (Vercel detecta y despliega automáticamente)
git push origin main
```

## 🛠️ Uso del Makefile (Opcional)

Si prefieres usar el Makefile incluido:

```bash
# Ver todos los comandos
make help

# Despliegue rápido (interactivo)
make quick-deploy

# Despliegue con mensaje
make deploy M="Tu mensaje de commit"
```

## 📁 Archivos de Configuración

- **`.gitignore`**: Archivos a ignorar en Git (OS, editor, logs, etc.)
- **`vercel.json`**: Configuración de routing y headers para Vercel
- **`package.json`**: Scripts de desarrollo (sin dependencias)

## ✅ Verificación

Antes de hacer commit, verifica:

- [ ] Todos los archivos HTML están en la raíz
- [ ] `index.html` existe y es accesible
- [ ] `vercel.json` está configurado correctamente
- [ ] `.gitignore` incluye archivos temporales

## 🐛 Troubleshooting

### Error 404 en Vercel

1. Verifica que `index.html` esté en la raíz del repositorio
2. Verifica la configuración en Vercel Dashboard:
   - Framework: `Other`
   - Build Command: (vacío)
   - Output Directory: `.`
3. Revisa los logs del deployment en Vercel

### Los cambios no se despliegan

1. Verifica que el push a GitHub fue exitoso
2. Revisa que Vercel esté conectado al repositorio correcto
3. Verifica los logs en Vercel Dashboard

## 📚 Recursos

- [Documentación de Vercel](https://vercel.com/docs)
- [GitHub Docs](https://docs.github.com)
- [Git Documentation](https://git-scm.com/doc)

---

**Desarrollado con ❤️ por Alejandro Gilabert**
