# Configuración de Vercel

## Problema: 404 NOT_FOUND

Si estás viendo un error 404, sigue estos pasos:

## ✅ Configuración en el Dashboard de Vercel

1. Ve a https://vercel.com/dashboard
2. Selecciona tu proyecto `Landing_personal`
3. Ve a **Settings** → **General**
4. Verifica la configuración:

### Build & Development Settings

- **Framework Preset**: `Other`
- **Build Command**: (dejar **VACÍO**)
- **Output Directory**: `.` (punto)
- **Install Command**: (dejar **VACÍO**)
- **Root Directory**: (dejar **VACÍO** o poner `.`)

### Environment Variables

No se necesitan variables de entorno para este proyecto.

## 🔧 Verificación

1. **Verifica que el repositorio esté conectado correctamente:**
   - Settings → Git → Debe mostrar: `gilatronico/Landing_personal`

2. **Verifica los deployments:**
   - Ve a la pestaña "Deployments"
   - El último deployment debe estar en estado "Ready"
   - Si hay errores, haz clic para ver los logs

3. **Redeploy manual:**
   - Si el último deployment falló, haz clic en "Redeploy"
   - O ve a la pestaña "Deployments" → "..." → "Redeploy"

## 📁 Estructura de Archivos

El proyecto debe tener estos archivos en la raíz:

```
index.html              ← Landing page principal
index-artist.html       ← Portafolio Artista
index-professional.html ← Portafolio Profesional
vercel.json            ← Configuración de Vercel
```

## 🔍 Troubleshooting

### Si sigue sin funcionar:

1. **Elimina y vuelve a crear el proyecto en Vercel:**
   - Settings → General → Delete Project
   - Crea un nuevo proyecto e importa el repositorio

2. **Verifica que los archivos estén en GitHub:**
   - https://github.com/gilatronico/Landing_personal
   - Debe existir `index.html` en la raíz

3. **Prueba acceder directamente a los archivos:**
   - https://landingpersonal.vercel.app/index.html
   - https://landingpersonal.vercel.app/index-artist.html

4. **Revisa los logs de deployment:**
   - En Vercel Dashboard → Deployments → Click en el deployment → Ver logs

## 📝 Configuración Actual

El `vercel.json` está configurado para:

- `/` → `index.html`
- `/artist` → `index-artist.html`
- `/professional` → `index-professional.html`

## 🚀 Después de Configurar

Una vez configurado correctamente, cada push a GitHub desplegará automáticamente.

```bash
make deploy M="Tu mensaje"
```
