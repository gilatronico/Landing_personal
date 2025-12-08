# 🎨 PROMPT CURSOR - Agregar Imágenes en Teaching Cards

## 🎯 Objetivo
Agregar imágenes profesionales en la parte superior de cada tarjeta de la sección "Docencia & Formación" (CEDEU, Santander FI, Medusa Capital). Las imágenes deben ser logos o thumbnails elegantes.

---

## 📋 Estructura Actual

```html
<!-- Teaching Section -->
<section id="teaching" class="section section-light">
    <div class="container">
        <div class="section-header">
            <h2>Docencia & Formación</h2>
            <p>Profesor universitario especializado en Digital Assets...</p>
        </div>

        <div class="services-grid">
            <!-- CARD 1: CEDEU -->
            <div class="service-card">
                <h3>CEDEU</h3>
                <p>Digital Assets, Blockchain, Product Management...</p>
            </div>

            <!-- CARD 2: Santander FI -->
            <div class="service-card">
                <h3>Santander FI (BME)</h3>
                <p>Formación profesional en Product, Web3 y Crypto...</p>
            </div>

            <!-- CARD 3: Medusa Capital -->
            <div class="service-card">
                <h3>Medusa Capital</h3>
                <p>Blockchain y Digital Assets. Formación profesional...</p>
            </div>
        </div>
    </div>
</section>
```

---

## 🎬 PROMPT PARA CURSOR

```
Mejora la sección "Docencia & Formación" agregando imágenes en cada tarjeta:

1. ESTRUCTURA NUEVA DE CADA CARD:
   - Top: Imagen/Logo (150px height)
   - Divider: línea sutil gris
   - Content: Título + Descripción (como ahora)
   - Hover: imagen ligeramente más oscura o con filtro

2. IMÁGENES A AGREGAR:
   
   a) CEDEU:
      - Logo CEDEU o institucional
      - Path: /images/teaching/cedeu-logo.png
      - Fallback color: #003366 (azul oscuro)
      - Alt text: "Logo CEDEU"

   b) Santander FI (BME):
      - Logo Santander o BME
      - Path: /images/teaching/santander-logo.png
      - Fallback color: #0066CC (azul Santander)
      - Alt text: "Logo Santander Financial Innovation"

   c) Medusa Capital:
      - Logo Medusa Capital o blockchain-themed
      - Path: /images/teaching/medusa-logo.png
      - Fallback color: #8B5CF6 (púrpura crypto)
      - Alt text: "Logo Medusa Capital"

3. ESTILO CSS PARA .service-card:
   
   a) Layout mejorado:
      - Display: flex
      - Flex-direction: column
      - Height: 100% (stretch full height)
      - Overflow: hidden
   
   b) Nueva clase .card-image:
      - Height: 150px
      - Width: 100%
      - Background-size: contain o cover
      - Background-position: center
      - Background-repeat: no-repeat
      - Background-color: (fallback color por institución)
      - Display: flex align-items center justify-content center
      - Border-bottom: 1px solid #e0e0e0
   
   c) Nueva clase .card-content:
      - Padding: var(--space-lg)
      - Flex: 1
      - Display: flex flex-direction column
   
   d) Hover effect en imagen:
      - Transform: scale(1.05)
      - Opacity: 0.8
      - Transition: 0.3s ease

4. HTML ACTUALIZADO POR CARD:

   <!-- CEDEU -->
   <div class="service-card">
       <div class="card-image" style="background-color: #003366;">
           <img src="/images/teaching/cedeu-logo.png" 
                alt="Logo CEDEU" 
                loading="lazy">
       </div>
       <div class="card-content">
           <h3>CEDEU</h3>
           <p>Digital Assets, Blockchain, Product Management y APIs...</p>
       </div>
   </div>

   <!-- Santander FI -->
   <div class="service-card">
       <div class="card-image" style="background-color: #0066CC;">
           <img src="/images/teaching/santander-logo.png" 
                alt="Logo Santander Financial Innovation" 
                loading="lazy">
       </div>
       <div class="card-content">
           <h3>Santander FI (BME)</h3>
           <p>Formación profesional en Product, Web3 y Crypto...</p>
       </div>
   </div>

   <!-- Medusa Capital -->
   <div class="service-card">
       <div class="card-image" style="background-color: #8B5CF6;">
           <img src="/images/teaching/medusa-logo.png" 
                alt="Logo Medusa Capital" 
                loading="lazy">
       </div>
       <div class="card-content">
           <h3>Medusa Capital</h3>
           <p>Blockchain y Digital Assets. Formación profesional...</p>
       </div>
   </div>

5. CSS COMPLETO A AGREGAR:

   .card-image {
       height: 150px;
       width: 100%;
       display: flex;
       align-items: center;
       justify-content: center;
       border-bottom: 1px solid rgba(0, 0, 0, 0.1);
       overflow: hidden;
       background-size: contain;
       background-position: center;
       background-repeat: no-repeat;
       padding: var(--space-md);
   }

   .card-image img {
       max-width: 100%;
       max-height: 100%;
       object-fit: contain;
       transition: transform var(--transition-base), 
                   opacity var(--transition-base);
   }

   .service-card:hover .card-image img {
       transform: scale(1.05);
       opacity: 0.85;
   }

   .card-content {
       padding: var(--space-lg);
       flex: 1;
       display: flex;
       flex-direction: column;
       gap: var(--space-md);
   }

   .service-card {
       display: flex;
       flex-direction: column;
       height: 100%;
   }

6. DARK MODE ADAPTACIÓN:
   
   .card-image {
       border-bottom-color: rgba(255, 255, 255, 0.1);
   }

7. RESPONSIVE:
   
   @media (max-width: 768px) {
       .card-image {
           height: 120px;
       }
   }

   @media (max-width: 480px) {
       .card-image {
           height: 100px;
       }

       .card-content {
           padding: var(--space-md);
       }
   }

Requisitos IMPORTANTES:
✓ Si no tienes imágenes, usa colores fallback (se ve bien igual)
✓ Las imágenes deben optimizadas (<100KB cada una)
✓ Aspect ratio: preferiblemente 16:9 o 1:1
✓ Logos deben ser PNG con fondo transparente ideal
✓ El hover effect debe ser sutil, no invasivo
✓ La sección debe mantener sus media queries responsive
✓ Dark mode debe verse bien con los colores fallback
```

---

## 📁 Estructura de Carpetas Recomendada

```
proyecto/
├── images/
│   └── teaching/
│       ├── cedeu-logo.png
│       ├── santander-logo.png
│       └── medusa-logo.png
├── index-professional.html
└── styles.css (o <style> en HTML)
```

---

## 🎨 MOCKUP VISUAL

### ANTES:
```
┌─────────────────────┐
│                     │
│  CEDEU              │
│                     │
│  Digital Assets,    │
│  Blockchain...      │
│                     │
└─────────────────────┘
```

### DESPUÉS:
```
┌─────────────────────┐
│   [CEDEU LOGO]      │  ← Imagen 150px
├─────────────────────┤  ← Divider
│  CEDEU              │
│                     │
│  Digital Assets,    │
│  Blockchain...      │
│                     │
└─────────────────────┘
```

---

## 💡 OPCIONES DE IMÁGENES

### Opción A: Logos Oficiales
- Buscar logos en:
  - CEDEU: www.cedeu.es
  - Santander FI: www.finanzas.santander.com
  - Medusa Capital: www.medusacapital.com

### Opción B: Colores Fallback Solo
- Si no tienes logos, los colores se ven bien:
  - CEDEU: Azul institucional #003366
  - Santander: Azul Santander #0066CC
  - Medusa: Púrpura cripto #8B5CF6

### Opción C: Placeholder Icons
- Usar emojis como placeholder:
  - CEDEU: 🎓
  - Santander: 💼
  - Medusa: 🔗

---

## 📊 RESULTADO ESPERADO

✅ Tarjetas más visuales y profesionales
✅ Logos/colores identifican fácilmente cada institución
✅ Layout estructurado y elegante
✅ Hover effects suaves
✅ Responsive perfecto
✅ Dark mode optimizado
✅ Performance buena (lazy loading)

---

## 🔧 PASOS DE IMPLEMENTACIÓN

1. **Estructura:** Actualiza HTML con .card-image y .card-content
2. **Estilos:** Agrega CSS para imágenes
3. **Imágenes:** Crea carpeta `/images/teaching/` y agrega logos
4. **Testing:** 
   - Desktop: verifica proporciones
   - Mobile: verifica responsive
   - Dark mode: verifica colores fallback
5. **Performance:** Optimiza imágenes (<100KB)

---

## 🚀 COMANDOS ÚTILES (Terminal)

```bash
# Si usas ImageMagick para optimizar:
convert cedeu-logo.png -resize 300x300 -quality 85 cedeu-logo-optimized.png

# O con tinypng.com (web tool)
# O con https://compressor.io/ (online)
```

---

**Status:** Listo para Cursor
**Impacto Visual:** Alto
**Tiempo Implementación:** 15-20 minutos
**Complejidad:** Media