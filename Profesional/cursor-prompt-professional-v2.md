# 🚀 CURSOR PROMPT AVANZADO - Portfolio Profesional v2.0

## 🎯 Objetivo
Elevar la página profesional a nivel enterprise: mejor estructura, interactividad avanzada, storytelling visual y experiencia profesional premium.

---

## 📊 ANÁLISIS ACTUAL

### ✅ Fortalezas
- Estructura HTML5 semántica perfecta
- CSS variables bien organizadas
- 3 secciones temáticas claras (Producto, Automation, Docencia)
- Dark/Light mode funcional
- Responsive design sólido
- Navegación limpia

### ⚠️ Áreas de Mejora PRIORITY
- **Hero section:** Muy minimalista, falta impacto visual
- **Project cards:** Sin visual assets, muy texto-pesado
- **Timeline:** No existe, solo lista de roles
- **Stats:** No animados, estáticos
- **Testimonios:** No existen
- **Case studies:** No hay links ni demos
- **Skills/Tech Stack:** No visualizados
- **CTA buttons:** Pocos y genéricos

---

## 🏗️ MEJORAS ESPECÍFICAS (PRIORIDAD)

### 🔴 TIER 1 - IMPLEMENTAR PRIMERO

#### 1. **Hero Section Pro** (Impacto Visual)
```
Requisitos:
- Gradiente animado de fondo (Blue corporate)
- Stats animados con contadores (0 → valor final)
- Frase tagline más potente (no "Head of Product...")
- CTA dual mejorado (primaria + secundaria destacadas)
- Ícono/avatar decorativo (minimalista)
- Animación subtle en scroll (parallax light)

Cambios:
├─ HTML: Agregar container de stats con data-count
├─ CSS: Keyframes para contador, gradiente animado
└─ JS: IntersectionObserver + contador (desde 0)
```

#### 2. **Timeline Experiencia Visual** (2019-2025)
```
Requisitos:
- Timeline vertical desktop / horizontal móvil
- Cada punto: año, rol, empresa, 1-2 logros
- Hover state: expandir con detalles
- Colores alternos (primary/secondary)
- Conectores visuales entre puntos
- Animación stagger al scroll

Cambios:
├─ HTML: Nueva <section> con timeline estructura
├─ CSS: Línea vertical SVG, estilos con variables
└─ JS: Reveal animation al scroll con delay
```

#### 3. **Stats Animados en Números**
```
Requisitos:
- 5 stats key metrics: "5+ años fintech", "3 universidades", "50+ proyectos", "10k+ followers", "100% remote"
- Counter animation: 0 → valor final en 2s
- Trigger: cuando section entra en viewport
- Estilo: Numbers grandes + label pequeño

Cambios:
├─ HTML: .counter-value con data-target
├─ CSS: font-size: 3rem, font-weight: bold
└─ JS: Intersection Observer + requestAnimationFrame
```

#### 4. **Project Cards Mejoradas**
```
Requisitos:
- Thumbnail/gradient por proyecto
- Badges de tech stack (Product, Blockchain, APIs, Control-M, etc)
- Métricas: "2024-actual", impacto cuantificado
- Links a case study / demo / GitHub (si aplica)
- Hover: expandir descripción, cambiar color

Cambios:
├─ HTML: Agregar .project-tags, .project-metrics
├─ CSS: Grid con badges, color coding por type
└─ JS: Modal/expand con más detalles (opcional)
```

### 🟡 TIER 2 - SIGUIENTE FASE

#### 5. **Skills & Tech Stack Visuales**
```
Requisitos:
- Sección "Core Competencies" con categorías:
  * Product: Product Owner, Roadmapping, User Research, GTM
  * Blockchain: Custodia, APIs, Smart Contracts, Tokenización
  * Tech: Control-M, Java, SQL, n8n, Make, Postman
  * Soft Skills: Leadership, Teaching, Communication
- Cada skill: etiqueta con barra de proficiency (3 niveles)
- Colores por categoría

Cambios:
├─ HTML: Grid de skills con categorías
├─ CSS: Badges de colores, progress bar
└─ JS: Animate bar width on scroll
```

#### 6. **Testimonios/Endorsements**
```
Requisitos:
- Carrusel con 3-4 testimonios (colegas/clientes)
- Avatar, nombre, rol, cita breve
- Estrellas de rating (5 stars)
- Nav prev/next o auto-rotate
- Swiper.js o vanilla carousel

Cambios:
├─ HTML: .testimonial-card x4
├─ CSS: Carrusel layout, smooth transitions
└─ JS: Swiper.js (CDN) + autoplay
```

#### 7. **Modal "Book a Call"**
```
Requisitos:
- CTA en nav + sections
- Modal con iframe Calendly
- Overlay oscuro
- Close button
- Smooth open/close animation

Cambios:
├─ HTML: Modal structure + Calendly iframe
├─ CSS: Modal styles, backdrop blur
└─ JS: Toggle con event listeners
```

#### 8. **Sección Case Studies**
```
Requisitos:
- 2-3 estudios de caso breves (Onyze, NFQ, Sopra)
- Estructura: Challenge, Solution, Results
- Números clave destacados
- Imágenes/screenshots (si disponibles)
- Links a más info

Cambios:
├─ HTML: Nueva sección con case-study cards
├─ CSS: Grid responsive, card designs
└─ JS: Lightbox para imágenes (opcional)
```

### 🟢 TIER 3 - NICE TO HAVE

#### 9. **Blog/Articles Section**
- Links a Medium, HashNode, LinkedIn articles
- Card preview con thumbnail, título, date, excerpt

#### 10. **Download CV Button**
- PDF interactivo en `/assets/cv-agr-2025.pdf`
- Botón destacado en nav + hero

#### 11. **Newsletter Signup**
- Email collection en footer
- Integration con Mailchimp/Substack

#### 12. **Dark Mode Easter Egg**
- Terminal-style dark mode (Matrix vibes)
- Aktivar con keyboard shortcut o hidden button

---

## 📐 INSTRUCCIONES TÉCNICAS PARA CURSOR

### **Estructura de Carpetas**
```
/index.html                    (landing/intro)
/index-artist.html            (artista)
/index-professional.html      (profesional - actual)
/assets/
  ├─ cv-agr-2025.pdf
  ├─ case-studies/
  │  ├─ onyze.jpg
  │  ├─ nfq.jpg
  │  └─ sopra.jpg
  └─ testimonials/
     └─ avatars/
```

### **Imports/CDN a Usar**
```html
<!-- Swiper.js: Carruseles -->
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

<!-- GSAP: Animaciones avanzadas (OPCIONAL) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>

<!-- ScrollReveal: Reveal on scroll (OPCIONAL) -->
<script src="https://unpkg.com/scrollreveal@4.0.9/dist/scrollreveal.min.js"></script>
```

### **Nuevas CSS Variables a Agregar**
```css
/* Stats & Metrics */
--stats-color-1: #2563EB
--stats-color-2: #1E40AF
--stats-color-3: #3B82F6

/* Skills Colors */
--skill-product: #2563EB
--skill-blockchain: #8B5CF6
--skill-tech: #06B6D4
--skill-soft: #EC4899

/* Proyecto Badges */
--badge-product: #2563EB
--badge-blockchain: #8B5CF6
--badge-api: #06B6D4
--badge-automation: #F59E0B
```

### **Validación antes de Deploy**
- ✅ Lighthouse: 90+ en todas las métricas
- ✅ Mobile: Responsive 375px-1920px
- ✅ A11y: WCAG AA conforme, focus visible
- ✅ Performance: LCP<2.5s, CLS<0.1, FID<100ms
- ✅ Cross-browser: Chrome, Firefox, Safari, Edge

---

## 🎬 PROMPTS ESPECÍFICOS PARA CURSOR

### **Prompt 1: Hero Section Animado**
```
Mejora la sección hero con:

1. Stats animados: "5+", "3", "50+" que hagan transición 
   de 0 al número cuando entra en viewport
2. Frase tagline más impactante: 
   "Product Leader en Digital Assets. Blockchain, Automation & Teaching."
3. CTA mejorado: 
   - Botón primario: "Ver Portfolio"
   - Botón secundario: "Descargar CV"
4. Gradiente de fondo sutil animado (azul a morado)
5. Pequeño avatar/icono decorativo (esfera gradient top-right)

Usa IntersectionObserver + requestAnimationFrame para contadores.
Mantén CSS variables, responsive, accesible (WCAG AA).
```

### **Prompt 2: Timeline Experiencia**
```
Agrega nueva sección "Experiencia" después de "Producto & Web3":

Timeline vertical (desktop) / horizontal (móvil):
- 2019: Sopra Steria - Java Developer - "Desarrollé componentes..."
- 2021: NFQ Advisory - Banking Consultant - "Especialista en workflows..."
- 2024: Onyze - Product Owner - "Lideré custodia SaaS..."

Cada punto tiene:
- Año destacado (big text)
- Rol (semibold)
- Empresa (secondary color)
- Descripción breve (1 línea)
- Hover: mostrar 2 logros clave

Línea vertical SVG conecta puntos (primary color).
Colores alternos: primary/secondary por punto.
Animación: fade-in + slide from left al scroll.

CSS: usa variables, animations en .5s ease.
JS: Intersection Observer para reveal.
Mobile: timeline horizontal con scroll.
```

### **Prompt 3: Project Cards Mejorados**
```
Mejora las tarjetas de proyectos para incluir:

1. Tech Stack Badges:
   - Onyze: "Product", "Blockchain", "APIs", "Custody"
   - NFQ: "Banking", "Automation", "Workflows"
   - Sopra: "Java", "Finance", "Microservices"

2. Métricas Visibles:
   - Año inicio - Año fin
   - 1-2 números clave (ej: "100+ usuarios", "50% reducción tiempo")

3. Hover Effect:
   - Color left-border changes
   - Card elevates (translateY)
   - Badges become more visible

4. Links (si aplican):
   - "Ver caso de estudio" 
   - "Más info"
   - "LinkedIn post"

CSS: Usa variable colors para badges por tipo.
Responsive: stack en mobile.
A11y: Focus visible en links.
```

### **Prompt 4: Skills Visuales**
```
Agrega sección "Core Competencies":

4 categorías con 4 skills cada una:

Product Management:
- Product Ownership ▓▓▓
- Roadmapping & GTM ▓▓▓
- User Research ▓▓
- Stakeholder Management ▓▓▓

Blockchain & Digital Assets:
- Asset Custody ▓▓▓
- Tokenización ▓▓
- Smart Contracts ▓▓
- DeFi Protocols ▓▓▓

Technology:
- Control-M ▓▓▓
- APIs & Microservices ▓▓▓
- n8n/Make ▓▓▓
- SQL/Java ▓▓

Soft Skills:
- Leadership ▓▓▓
- Teaching & Mentoring ▓▓▓
- Communication ▓▓▓
- Problem Solving ▓▓▓

Cada categoría: color único (use variables ya creadas).
Barra de proficiency: 3 niveles = ▓▓▓, ▓▓, ▓.
Hover: mostrar descripción breve.

Layout: Grid 2x2 (desktop), 1 (mobile).
Animations: bars fill on scroll.
```

---

## 📋 CHECKLIST ANTES DE DEPLOY

- [ ] Todos los links funcionan (test en prod)
- [ ] Formulario contacto envía emails (EmailJS configured)
- [ ] Calendly modal se abre/cierra sin errores
- [ ] Stats animan solo una vez (no en cada scroll)
- [ ] Timeline visible en mobile sin overflow
- [ ] Skills bars no se cortan en responsive
- [ ] Testimonios carrusel funciona (swiper.js)
- [ ] Dark mode toggle persiste (localStorage)
- [ ] PDF CV se descarga correctamente
- [ ] Meta tags OG/Twitter actualizados
- [ ] GA4 tracking funciona
- [ ] Lighthouse 90+ en todas métricas
- [ ] WCAG AA conforme (axe DevTools)
- [ ] Mobile tested en iOS + Android

---

## 🎨 GUÍA DE COLORES EMPRESA

```
Primary: #2563EB (Azul corporativo - CTA, enlaces)
Secondary: #1E40AF (Azul oscuro - hover states)
Accent: #3B82F6 (Azul claro - secundarios)

Product: #2563EB (Azul)
Blockchain: #8B5CF6 (Púrpura)
Tech: #06B6D4 (Cian)
Soft: #EC4899 (Rosa)

Dark BG: #0F172A (casi negro)
Card BG: #1E293B (gris oscuro)
Text: #F1F5F9 (blanco puro)
Secondary: #94A3B8 (gris claro)
```

---

## ❓ PREGUNTAS FRECUENTES

**P: ¿Canvio el font?**
R: No. Exo 2 (professional) es identidad. Solo si tienes razón muy fuerte.

**P: ¿Agrego animations GSAP?**
R: Usa Intersection Observer vanilla primero. GSAP solo si necesitas physics/timeline complejas.

**P: ¿Cuántos proyectos muestro?**
R: 3 máximo (Sopra, NFQ, Onyze). Limpio > abrumador.

**P: ¿Testimonios reales o fabricados?**
R: Reales. Si no tienes 3-4, mejor no agregar sección.

**P: ¿Backend necesario?**
R: No. Usa EmailJS para contacto, Calendly iframe para meetings, PDF estático para CV.

---

## 📈 EVOLUCIÓN ESPERADA

```
ANTES (Current):
- Hero minimalista ✓
- 3 secciones texto-heavy
- No animaciones complejas
- Stats estáticos
- Proyectos como lista

DESPUÉS (v2.0):
- Hero impactante con animaciones
- 5+ secciones con visual assets
- Animaciones smooth en scroll
- Stats animados con contadores
- Proyectos con badges, links, métricas
- Timeline visual 2019→2025
- Skills barra de proficiency
- Testimonios carrusel
- Modal calendly funcional
```

---

## 🚀 QUICK START

1. Copia este prompt completo en Cursor
2. Pide: **"Analiza el portfolio profesional y sugiere mejoras"**
3. Luego: **"Implementa Hero Section animado con stats"**
4. Después: **"Agrega Timeline de experiencia"**
5. Finalmente: **"Mejora Project Cards con tech badges"**

---

**Status:** Ready for Implementation  
**Complexity:** Intermedia-Alta  
**Time Estimate:** 4-6 horas implementación completa  
**Tools:** Vanilla JS, CSS3 Animations, Swiper.js CDN