# 🎨 CURSOR PROMPT - Landing Page Alejandro Gilabert v2.0

## 🎯 Objetivo
Transformar la landing page de selección de portafolios en una experiencia premium, atractiva y memorable que cause impacto visual desde el primer segundo.

---

## 📊 ANÁLISIS ACTUAL

### ✅ Fortalezas
- Estructura HTML limpia y semántica
- Dark mode elegante (gradiente azul-oscuro)
- CSS variables bien organizadas
- Animaciones suaves (fade-in, fade-up)
- Responsive design funcional
- Accesibilidad base (focus-visible)

### ⚠️ Áreas de Mejora CRÍTICA
- **Hero section:** Muy simple, sin impacto visual
- **Cards:** Genéricas, falta personalidad
- **Animaciones:** Básicas, sin interactividad avanzada
- **Background:** Gradiente estático, sin dinamismo
- **Efectos:** No hay parallax, scroll effects, ni micro-interactions
- **Tipografía:** Sin variación, todo Inter
- **Visual hierarchy:** Poco contraste visual
- **CTAs:** Botones genéricos, sin pizzazz

---

## 🚀 MEJORAS ESPECÍFICAS (IMPLEMENTAR)

### 🔴 TIER 1 - IMPACTO VISUAL MÁXIMO

#### 1. **Background Animado + Orbes Flotantes**
```
Requisitos:
- Mantener gradiente base pero agregar:
  * 2-3 orbes grandes (blur: 200px) flotando
  * Orbes con colores brand (azul, púrpura, verde)
  * Movimiento lento continuo (KeyFrame animation)
  * Efecto parallax sutil en scroll
  * Opacity: 0.15-0.25 (no abruma el contenido)

Cambios:
├─ HTML: Agregar <div> orbes en body::before/after + pseudo-elementos
├─ CSS: Keyframes para floating, posición absoluta, mix-blend-mode
└─ JS: (Opcional) Parallax tracking si quieres interactividad
```

#### 2. **Hero Section Premium**
```
Requisitos:
- Tipografía más impactante:
  * H1: Tamaño más grande (5rem base), spacing negativo
  * Subtítulo: Fraseología poderosa ("Donde el arte y la tecnología convergen")
  * Animación: Texto que se reveala palabra por palabra (stagger)
- Agregar elemento visual:
  * Avatar/avatar gradient circle bajo nombre
  * Badge "2 Worlds" o similar
  * Línea decorativa horizontal (gradient)

Cambios:
├─ HTML: Reestructurar hero, agregar spans para cada palabra
├─ CSS: Letter-spacing aumentado, line-height optimizado
└─ JS: Intersection Observer para reveal animation staggered
```

#### 3. **Cards Super Premium**
```
Requisitos:
- Mejora Visual Completa:
  * Imagen/gradient preview en top de card
  * Efecto glassmorphism (backdrop-blur)
  * Border gradient (no border estático)
  * Icon mucho más grande (6-8rem)
  * Shadow mejorada (glow effect)
  * Hover effects: rotate, scale, glow

- Nuevo contenido:
  * "Año de inicio" (1 dato clave)
  * Número de items (ej: "50+ Tracks", "5+ Años Experiencia")
  * Pequeño divider visual entre sections

- Micro-interactions:
  * Button shadow on hover
  * Border gradient animation on hover
  * Features list items slide in on hover
  * Icon rotation on hover (15deg)

Cambios:
├─ HTML: Agregar .card-preview, .card-stat, restructurar
├─ CSS: Border-image gradients, mix-blend-mode, filter effects
└─ JS: Hover tracking, stagger animations
```

#### 4. **Animaciones Avanzadas**
```
Requisitos:
- Scroll Reveal:
  * Cards se revelan de abajo hacia arriba (stagger: 100ms)
  * Features list items slide from left con delay
  * Icon rotate in
  
- Hover Effects:
  * Cursor tracking en cards (pequeño 3D tilt)
  * Light follows cursor en border
  * Particles float en hover (CSS stars/dots)
  
- Page Load:
  * Hero fade-in smooth
  * Nombre "splits" en dos líneas con timing
  * Subtitle fades after nombre

Cambios:
├─ CSS: Keyframes complejas, timing functions variables
├─ JS: Intersection Observer, mouse tracking, GSAP (opcional)
└─ Libs: GSAP para animaciones complejas (CDN)
```

### 🟡 TIER 2 - PREMIUM DETAILS

#### 5. **Navbar Flotante Minimal**
```
Requisitos:
- Agregar navegación simple:
  * Logo "AGR" centered o left
  * Links pequeños: "Artista", "Profesional", "Contacto"
  * Modo oscuro toggle (opcional)
  * Fixed position, backdrop blur, subtle shadow

Cambios:
├─ HTML: Nueva <nav> elemento
├─ CSS: Sticky/fixed positioning, glassmorphism
└─ JS: Scroll reveal/hide logic
```

#### 6. **Stats Section (Pre-Cards)**
```
Requisitos:
- Agregar sección de stats antes de cards:
  * "11+ Años Creando"
  * "2 Universos"
  * "100% Pasión"
- Cada stat: número grande + descripción
- Animated counters (0 → valor final)
- Layout: 3 columnas desktop, 1 mobile

Cambios:
├─ HTML: Nueva sección .stats-section
├─ CSS: Grid responsive, counter animations
└─ JS: Counter animation + Intersection Observer
```

#### 7. **Floating Elements + Particles**
```
Requisitos:
- Agregar elementos decorativos que flotan:
  * Pequeños puntos/círculos que aparecen/desaparecen
  * Lineas diagonales que cruzan fondo
  * Stars/sparkles en hover
  * Efecto "breathing" suave

Cambios:
├─ CSS: Pseudo-elementos, keyframes breathing/floating
├─ HTML: (Opcional) Agregar container para particles
└─ JS: (Opcional) Canvas para particles dinámicas
```

### 🟢 TIER 3 - NICE TO HAVE

#### 8. **Efecto Parallax en Scroll**
- Background se mueve más lento que cards
- Hero subtitle se desvanece sutilmente

#### 9. **Modal "About Me" Rápido**
- Popup pequeño al clickear nombre
- Info breve sobre las dos versiones
- Close en ESC o X button

#### 10. **Modo Interactivo Inicial**
- Mensaje flotante: "Hola 👋 Elige tu ruta"
- Desaparece después de 5s

---

## 📐 INSTRUCCIONES TÉCNICAS

### **Librerías a Usar**
```html
<!-- GSAP: Animaciones pro (RECOMENDADO) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/ScrollTrigger.min.js"></script>

<!-- (OPCIONAL) Cursor Tracking -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/vanilla-tilt/1.8.0/vanilla.min.js"></script>
```

### **Nuevas CSS Variables a Agregar**
```css
/* Gradients */
--gradient-hero: linear-gradient(135deg, #2563EB 0%, #8B5CF6 50%, #1DB954 100%);
--gradient-card-artist: linear-gradient(135deg, #1DB954 0%, #059669 100%);
--gradient-card-pro: linear-gradient(135deg, #2563EB 0%, #1E40AF 100%);

/* Glassmorphism */
--glass-bg: rgba(51, 65, 85, 0.5);
--glass-border: rgba(255, 255, 255, 0.1);

/* Glow Effects */
--glow-blue: 0 0 30px rgba(37, 99, 235, 0.3);
--glow-green: 0 0 30px rgba(29, 185, 84, 0.3);
--glow-purple: 0 0 30px rgba(139, 92, 246, 0.3);
```

### **Estructura Actualizada**
```html
<body>
  <!-- Orbes animados en background -->
  <div class="orbe orbe-1"></div>
  <div class="orbe orbe-2"></div>
  <div class="orbe orbe-3"></div>
  
  <!-- Nav flotante -->
  <nav class="navbar-float"></nav>
  
  <!-- Main content (actual) -->
  <main>
    <!-- Stats section NEW -->
    <!-- Hero section (mejorada) -->
    <!-- Cards grid (mejorada) -->
  </main>
  
  <!-- Footer -->
</body>
```

---

## 🎬 PROMPTS ESPECÍFICOS PARA CURSOR

### **Prompt 1: Background + Orbes Animados**
```
Mejora el background de la landing con:

1. Mantén el gradiente actual (135deg, #0F172A → #1E293B)
2. Agrega 3 orbes grandes que flotan continuamente:
   - Orbe 1: Azul (#2563EB), position top-left, 300px diameter
   - Orbe 2: Púrpura (#8B5CF6), position middle-right, 350px diameter
   - Orbe 3: Verde (#1DB954), position bottom-center, 280px diameter
   
3. Cada orbe:
   - Blur: 200px
   - Opacity: 0.15
   - Movimiento: KeyFrame animation (floating)
   - Mix-blend-mode: screen o lighten
   - Duración: 20s infinite

4. Efecto bonus: Parallax sutil en scroll (translate 50px por scroll)

Usa CSS keyframes puras (sin JS). Responsive: reducir size en mobile.
```

### **Prompt 2: Hero Section Cinematográfica**
```
Transforma el hero section en algo impactante:

1. H1 "Alejandro Gilabert":
   - Font-size: 4.5rem (o mayor)
   - Letter-spacing: -0.05em
   - Line-height: 1
   - Gradient text: #2563EB → #8B5CF6 → #1DB954
   - Text-shadow: glow effect sutil

2. Subtítulo mejorado:
   - Cambiar de "Elige el portafolio..." a algo más poderoso:
     "Donde el arte y la tecnología convergen"
   - Font-size: 1.4rem
   - Color: gradiente también

3. Animación reveal:
   - Cada palabra del título se revela con fade + slide-up
   - Stagger timing: 100-150ms entre palabras
   - Trigger: on page load

4. Elemento decorativo:
   - Agregar línea horizontal gradient bajo H1
   - Width: 100px, height: 3px
   - Animación: slide in from left

Usa GSAP para animaciones smooth. Mantén responsive.
```

### **Prompt 3: Cards Glassmorphism Premium**
```
Rediseña las choice-cards para verse premium:

1. Layout mejorado:
   - Top section: Gradient preview (artist: green, pro: blue)
   - Icon: 7rem size, animation rotate on hover
   - Title: 1.75rem, color blanca
   - Description: 1rem, color secondary
   - Stats: NEW - agregar "50+ tracks" o "5+ años"
   - Features: slide from left on card hover
   - Button: gradient matching card type

2. Glassmorphism:
   - Background: rgba(51, 65, 85, 0.4) + backdrop-filter: blur(20px)
   - Border: 1px solid rgba(255, 255, 255, 0.1)
   - Border-top: 4px solid (green/blue) - animated width

3. Hover Effects:
   - Transform: translateY(-8px) + rotateX(2deg)
   - Box-shadow: strong glow (--glow-blue o --glow-green)
   - Button: grow + shadow increase
   - Icon: rotateZ(15deg)
   - Features: stagger slide-in animation

4. Border Gradient Animation:
   - On hover, border-top animates color: primary → lighter
   - Duración: 0.5s

Usa Vanilla Tilt para 3D tilt effect (CDN). Mantén accesibilidad.
```

### **Prompt 4: Scroll Reveal + Stagger Animations**
```
Agrega animaciones de reveal en scroll:

1. Cards reveal:
   - Initial: opacity 0, translateY(30px)
   - On scroll into view: opacity 1, translateY(0)
   - Stagger: 150ms entre cards
   - Duration: 0.8s
   - Easing: ease-out-cubic

2. Features list items:
   - Initial: opacity 0, translateX(-20px)
   - On card hover: se animan secuencialmente
   - Stagger: 50ms
   - Duration: 0.4s

3. Hero animation:
   - On page load:
     * H1 fade in + translateY
     * Subtitle fade in delayed (300ms)
     * Line decorativa slide from left (500ms)

Usa Intersection Observer + GSAP para smooth animations.
Considerar prefers-reduced-motion para accesibilidad.
```

### **Prompt 5: Stats Section (Nuevo)**
```
Agrega sección de stats antes de las cards:

Estructura:
┌─────────────────────────────────────┐
│     11+        2         100%        │
│   Años      Universos    Pasión      │
│   Creando    Creando      en Cada    │
│                           Proyecto   │
└─────────────────────────────────────┘

Requisitos:
1. Layout: 3 columnas desktop, 1 móvil
2. Cada stat:
   - Número grande (4rem), animado del 0 al valor
   - Label pequeño (0.9rem)
   - Línea divisoria vertical (en desktop)
   - Color: alternado (blue, purple, green)

3. Animación:
   - Counter: 0 → número en 2s, on scroll into view
   - Fade + scale in on load
   - Duration: 1s

4. Estilo:
   - Background: transparent o semi-glass
   - Spacing: margin-top grande (100px)
   - Responsive: stacked en mobile

Usa requestAnimationFrame para smooth counter animation.
```

---

## 📋 CHECKLIST DE IMPLEMENTACIÓN

### Fase 1: Fundamentos
- [ ] Orbes animados en background (floating + blur)
- [ ] Hero section mejorada (tipografía, gradiente, línea decorativa)
- [ ] Animaciones reveal en scroll (Intersection Observer)

### Fase 2: Cards
- [ ] Glassmorphism styling (backdrop-filter)
- [ ] Preview gradient en top de card
- [ ] Hover effects (3D tilt, glow, shadow)
- [ ] Features list stagger animation
- [ ] Border gradient animation

### Fase 3: Detalles
- [ ] Stats section (counters animados)
- [ ] Navbar flotante (opcional)
- [ ] Micro-interactions refinadas
- [ ] Mobile optimization

### Validación
- [ ] Lighthouse: 90+ en todas métricas
- [ ] Mobile: Responsive 375px-1920px
- [ ] Performance: No jank, smooth 60fps
- [ ] A11y: WCAG AA, prefers-reduced-motion respected
- [ ] Browser: Chrome, Firefox, Safari, Edge

---

## 🎨 PALETA FINAL

```
Primary Brand: #2563EB (Azul corporativo)
Artist Accent: #1DB954 (Verde Spotify)
Professional: #2563EB (Azul)
Accent: #8B5CF6 (Púrpura)

Dark BG: #0F172A
Card BG: #1E293B
Text: #F1F5F9
Secondary: #CBD5E1
```

---

## 🎬 ORDEN DE EJECUCIÓN RECOMENDADO

1. **Primero:** Orbes + Hero (impacto visual máximo)
2. **Luego:** Cards glassmorphism (premium feeling)
3. **Después:** Scroll animations (dinamismo)
4. **Finalmente:** Stats + detalles (pulido)

---

## 💡 TIPS PRO

- ✅ Usa `will-change: transform` en elementos animados
- ✅ Debounce scroll events para performance
- ✅ Test en 4G para asegurar smooth animation
- ✅ Usa `content-visibility` para optimizar DOM
- ✅ Considera usar GSAP split-text para letras individuales

---

**Status:** Ready for Premium Implementation  
**Complexity:** Avanzada  
**Time Estimate:** 3-4 horas  
**Result:** Landing page premium que impacta