# 🎨 PROMPT PARA MEJORAR LA IMAGEN HERO - Cursor

## 🎯 Objetivo
Redimensionar y estilizar la imagen del hero section para que sea **mucho más pequeña, elegante y proporcionada** con el diseño profesional.

---

## 📋 Cambios a Realizar

### 1️⃣ **Reducir tamaño imagen**
- **Actual:** Imagen ocupa ~50% del ancho (demasiado grande)
- **Objetivo:** Imagen ~35% max, centrada, con espaciado elegante

### 2️⃣ **Estilizar la imagen**
- Border radius profesional (12-16px)
- Shadow sutil pero elegante
- Aspect ratio fijo (1:1 preferiblemente)
- Hover effect smooth

### 3️⃣ **Mejorar grid layout**
- Hero content 60% left
- Imagen 40% right
- Alineación vertical centrada
- Gap elegante entre elementos

### 4️⃣ **Responsive**
- Desktop: lado a lado
- Tablet: imagen más pequeña
- Mobile: imagen encima, tamaño contenido

---

## 🎬 PROMPT PARA CURSOR

```
Rediseña la sección hero con la imagen mucho más pequeña y elegante:

1. ESTRUCTURA DEL GRID:
   - Hero content (texto/CTA): 60% ancho
   - Hero image: 40% ancho (NO MÁS)
   - Gap entre elementos: 48px
   - Alineación vertical: center
   - Aspect ratio imagen: 1/1 (cuadrado)

2. ESTILO DE LA IMAGEN (.hero-image):
   - Width: 100% (del contenedor 40%)
   - Max-width: 350px (límite máximo en desktop)
   - Height: auto (mantener 1:1 ratio)
   - Border-radius: 16px
   - Box-shadow: 0 8px 24px rgba(0,0,0,0.12)
   - Background: linear-gradient(135deg, #f0f4ff 0%, #f9f5ff 100%)
   - Overflow: hidden
   - Border: 1px solid rgba(37, 99, 235, 0.1)

3. HOVER EFFECT:
   - Transform: translateY(-4px)
   - Box-shadow: 0 12px 32px rgba(0,0,0,0.15)
   - Transition: 0.3s ease

4. RESPONSIVE:
   - Tablet (768px): Max-width 300px, gap 32px
   - Mobile (480px): 
     * Grid: 1 columna (contenido arriba, imagen abajo)
     * Image: Max-width 280px, centrada
     * Aspect ratio: mantener 1:1

5. DARK MODE:
   - Background: linear-gradient(135deg, rgba(30,58,95,0.2) 0%, rgba(44,82,130,0.2) 100%)
   - Border: rgba(255,255,255,0.1)
   - Shadow: rgba(0,0,0,0.3) (más oscuro)

6. IMAGEN DENTRO:
   - Si el img element tiene una foto:
     * Object-fit: cover
     * Object-position: center
     * Width: 100%
     * Height: 100%

Asegúrate que:
✓ La imagen se vea pequeña, proporcionada y elegante
✓ El texto no compite con la imagen (texto es protagonista)
✓ Mobile primero: imagen responsiva en todos los breakpoints
✓ La sombra es sutil pero visible
✓ El hover effect es smooth y profesional
✓ Dark mode se ve bien
```

---

## 🔧 CÓDIGO ESPECÍFICO A CAMBIAR

### Búsqueda en CSS:
```css
.hero-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;  /* ← CAMBIAR A: 1.5fr 1fr */
    gap: var(--space-xl);
    align-items: center;
}

.hero-image {
    width: 100%;
    height: 400px;  /* ← REDUCIR A: 350px */
    border-radius: 12px;  /* ← AUMENTAR A: 16px */
    box-shadow: var(--shadow-lg);
    background: var(--bg-secondary);
    position: relative;
    overflow: hidden;
}

/* AGREGAR NUEVO: Hover effect */
.hero-image:hover {
    transform: translateY(-4px);
    box-shadow: 0 12px 32px rgba(0,0,0,0.15);
    transition: all var(--transition-base);
}
```

### En RESPONSIVE (tablets):
```css
@media (max-width: 768px) {
    .hero-grid {
        grid-template-columns: 1fr;  /* Cambiar a 1 columna */
        gap: var(--space-lg);
    }
    
    .hero-image {
        height: 300px;  /* ← Reducir más en tablet */
        max-width: 300px;
        margin: 0 auto;
    }
}
```

### En RESPONSIVE (mobile):
```css
@media (max-width: 480px) {
    .hero-image {
        height: 280px;
        max-width: 280px;
    }
}
```

---

## 📊 ANTES vs DESPUÉS

### ANTES:
- Imagen: ~50% ancho
- Alto: 400px+
- Se ve muy grande
- Compite con texto
- Poco elegante

### DESPUÉS:
- Imagen: ~35% ancho (max 350px)
- Alto: proporcional 1:1
- Se ve pequeña y refinada
- Texto es protagonista
- Muy elegante
- Efectos hover smooth
- Responsive en mobile

---

## 🎨 VISUAL MOCKUP

```
┌─────────────────────────────────────────┐
│  DESKTOP (1200px+)                      │
│                                         │
│  [Texto       |    [Imagen]            │
│   ~60%        |     ~40%                │
│   Content]    |     pequeña]            │
│               |                         │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│  TABLET (768px)                         │
│                                         │
│  [Texto ~100%]                          │
│                                         │
│  [Imagen centrada ~300px]               │
│                                         │
└─────────────────────────────────────────┘

┌─────────────────────────────────────────┐
│  MOBILE (480px)                         │
│                                         │
│  [Texto ~100%]                          │
│                                         │
│  [Imagen ~280px centrada]               │
│                                         │
└─────────────────────────────────────────┘
```

---

## ✨ RESULTADO ESPERADO

✅ Imagen pequeña pero visible
✅ Proporciones elegantes
✅ Layout profesional y balanceado
✅ Hover effects suave
✅ Perfectamente responsive
✅ Dark mode optimizado
✅ Visual hierarchy clara (texto > imagen)

---

## 💡 TIPS EXTRA

1. **Si la imagen está en HTML como background:**
   ```html
   <div class="hero-image" style="background-image: url('images/corporativa copia 2.png')"></div>
   ```
   Agregar CSS:
   ```css
   .hero-image {
       background-size: cover;
       background-position: center;
       background-repeat: no-repeat;
   }
   ```

2. **Si la imagen es un IMG tag:**
   ```html
   <img src="images/corporativa copia 2.png" alt="Alejandro Gilabert" class="hero-image">
   ```
   Asegurar CSS:
   ```css
   .hero-image {
       object-fit: cover;
       object-position: center;
       width: 100%;
       height: 100%;
   }
   ```

3. **Para optimizar performance:**
   - Imagen debe ser <200KB
   - Formato: WebP o JPG optimizado
   - Dimensiones reales: 700x700px min

---

**Status:** Listo para implementar en Cursor
**Impacto:** Visual + Layout profundamente mejorado
**Tiempo:** 10-15 minutos implementación