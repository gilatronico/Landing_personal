# 🎯 PROMPT CURSOR - Implementar Opción B (Top Line Elegante)

## Copiar y Pegar en Cursor

```
Rediseña completamente la sección "Docencia & Formación" eliminando los banners de color grandes.

OBJETIVO: Tarjetas minimalistas y elegantes con solo una línea de color en TOP (6px).

---

## ESTRUCTURA HTML NUEVA:

Encuentra esta sección:
```html
<!-- Teaching Section -->
<section id="teaching" class="section section-light">
    <div class="container">
        <div class="section-header">
            <h2>Docencia & Formación</h2>
            <p>Profesor universitario especializado...</p>
        </div>

        <div class="services-grid">
            <!-- Card 1 -->
            <div class="service-card cedeu-card">
                <h3>CEDEU</h3>
                <p>Digital Assets, Blockchain, Product Management y APIs. Proyectos aplicados.</p>
            </div>

            <!-- Card 2 -->
            <div class="service-card santander-card">
                <h3>Santander FI (BME)</h3>
                <p>Formación profesional en Product, Web3 y Crypto para profesionales del mercado.</p>
            </div>

            <!-- Card 3 -->
            <div class="service-card medusa-card">
                <h3>Medusa Capital</h3>
                <p>Blockchain y Digital Assets. Formación profesional para equipos.</p>
            </div>
        </div>

        <div style="text-align: center; margin-top: var(--space-3xl);">
            <button class="btn btn-primary" onclick="openCalendlyModal()">Solicita una consultoría</button>
        </div>
    </div>
</section>
```

ELIMINA todo lo anterior (card-image, card-image-initials, card-image-icon, etc.)

Y REEMPLAZA con lo de arriba.

---

## ESTILOS CSS A AGREGAR/REEMPLAZAR:

Busca esta sección CSS:

```css
.service-card {
    background: var(--bg-secondary);
    padding: var(--space-lg);
    border-radius: var(--radius-lg);
    text-align: center;
    border: 1px solid var(--border-color);
    transition: all var(--transition-base);
}
```

Y REEMPLAZA por:

```css
.service-card {
    background: var(--bg-secondary);
    padding: var(--space-lg);
    border-radius: 8px;
    border: none;
    border-top: 6px solid;
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.08);
    transition: all var(--transition-base);
}

/* Colores específicos por institución */
.cedeu-card {
    border-top-color: #003366;
}

.santander-card {
    border-top-color: #0066CC;
}

.medusa-card {
    border-top-color: #8B5CF6;
}

/* Hover Effects */
.service-card:hover {
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.12);
    transform: translateY(-4px);
    border-top-width: 8px;
}

/* Typography adjustments */
.service-card h3 {
    margin-top: 0;
    margin-bottom: var(--space-md);
    color: var(--text-primary);
    font-size: 1.3rem;
    font-weight: 600;
}

.service-card p {
    margin: 0;
    color: var(--text-secondary);
    font-size: 0.95rem;
    line-height: 1.6;
    text-align: left;
}
```

---

## DARK MODE ADJUSTMENTS (Agregar):

Si tienes dark mode, asegúrate de que el CSS incluya:

```css
/* Dark mode adjustments */
@media (prefers-color-scheme: dark) {
    .service-card {
        background: var(--bg-secondary);
        border-top: 6px solid;
    }
    
    .service-card:hover {
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
    }
}
```

---

## RESPONSIVE ADJUSTMENTS:

Agregar en media queries (si no existen):

```css
@media (max-width: 768px) {
    .service-card {
        padding: var(--space-lg);
    }
    
    .service-card h3 {
        font-size: 1.1rem;
    }
    
    .service-card p {
        font-size: 0.9rem;
    }
}

@media (max-width: 480px) {
    .service-card {
        padding: var(--space-md);
    }
    
    .service-card h3 {
        font-size: 1rem;
    }
    
    .service-card p {
        font-size: 0.85rem;
    }
}
```

---

## ELIMINACIONES (LIMPIA EL CSS):

Busca y ELIMINA estas clases (ya no se usan):

- .card-image
- .card-image.cedeu
- .card-image.santander
- .card-image.medusa
- .card-image-initials
- .card-image-icon
- .card-banner
- .banner-logo
- Cualquier .card-logo o .card-header que sea solo para las imágenes

Mantén todo lo demás (animations, grid responsives, etc.)

---

## RESULTADO ESPERADO:

✅ Tarjetas limpias y minimalistas
✅ Línea de color TOP 6px identificando institución
✅ Hover: borde crece a 8px + elevation effect
✅ Typography mejorada (text-align left en descripción)
✅ Dark mode se ve perfecto
✅ Responsive en mobile
✅ Sin banners de color grandes
✅ Muy profesional y elegante

---

## VALIDACIÓN:

Después de cambios:
- [ ] Verifica que no haya errores en console (F12)
- [ ] Prueba hover en cada tarjeta
- [ ] Verifica en mobile (375px)
- [ ] Prueba dark mode
- [ ] Comprueba que el borde crece en hover

```

---

## 📋 Resumen de Cambios:

**QUITAR:**
- Banners de color (120px)
- Imágenes grandes
- card-image, card-image-initials, card-image-icon
- Todo lo visual "pesado"

**AGREGAR:**
- Border-top 6px por institución
- Hover effect (crece a 8px)
- Hover elevation (transform -4px)
- Text-align left en descripción

**RESULTADO:**
- ✨ Tarjetas minimalistas
- ✨ Muy elegantes
- ✨ Profesionales
- ✨ Limpias y espaciosas

---

## 🚀 Pasos Finales:

1. **Copia el prompt completo** (desde "Rediseña completamente...")
2. **Abre Cursor** con tu HTML profesional
3. **Pega en el chat** de Cursor
4. **Cursor lo implementará automáticamente**
5. **Verifica en navegador** - debería verse hermoso ✨

---

**Status:** Listo para implementar  
**Resultado Visual:** Premium minimalista  
**Tiempo:** 5-10 minutos  
**Complejidad:** Baja