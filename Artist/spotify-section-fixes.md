# 📌 FIXES SPOTIFY SECTION - HTML ARTIST PAGE

## Cambios a hacer:

### 1️⃣ REEMPLAZAR: CSS de .soundcloud-wrapper

**BUSCA ESTO EN TU CSS:**
```css
.soundcloud-wrapper {
    background: linear-gradient(135deg, var(--bg-card) 0%, var(--bg-secondary) 100%);
    border-radius: var(--radius-lg);
    padding: var(--space-2xl);
    border: 1px solid var(--border-color);
}
```

**REEMPLAZA POR:**
```css
.soundcloud-wrapper {
    background: var(--bg-secondary);
    border-radius: var(--radius-lg);
    padding: var(--space-xl) var(--space-lg);
    border: 1px solid var(--border-color);
}
```

---

### 2️⃣ REEMPLAZAR: CSS de .soundcloud-cta

**BUSCA ESTO:**
```css
.soundcloud-cta {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--space-lg);
    align-items: center;
}
```

**REEMPLAZA POR:**
```css
.soundcloud-cta {
    display: grid;
    grid-template-columns: 1fr 1.2fr;
    gap: var(--space-xl);
    align-items: stretch;
}
```

---

### 3️⃣ REEMPLAZAR: CSS de .soundcloud-card

**BUSCA ESTO:**
```css
.soundcloud-card {
    background: var(--bg-secondary);
    padding: var(--space-lg);
    border-radius: var(--radius-lg);
    text-align: center;
    border: 1px solid var(--border-color);
    transition: all var(--transition-base);
}
```

**REEMPLAZA POR:**
```css
.soundcloud-card {
    background: var(--bg-card);
    padding: var(--space-xl);
    border-radius: var(--radius-lg);
    text-align: center;
    border: 1px solid var(--border-color);
    transition: all var(--transition-base);
    display: flex;
    flex-direction: column;
    justify-content: center;
}
```

---

### 4️⃣ REEMPLAZAR: CSS de .spotify-previews

**BUSCA ESTO:**
```css
.spotify-previews {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: var(--space-lg);
}
```

**REEMPLAZA POR:**
```css
.spotify-previews {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
    gap: var(--space-md);
}
```

---

### 5️⃣ REEMPLAZAR: CSS de .preview-card

**BUSCA ESTO:**
```css
.preview-card {
    background: var(--bg-card);
    border-radius: var(--radius-lg);
    padding: var(--space-lg);
    border: 1px solid var(--border-color);
    transition: all var(--transition-base);
    opacity: 0;
    animation: fadeInUp 0.6s ease forwards;
}
```

**REEMPLAZA POR:**
```css
.preview-card {
    background: var(--bg-card);
    border-radius: var(--radius-md);
    padding: var(--space-md);
    border: 1px solid var(--border-color);
    transition: all var(--transition-base);
    opacity: 0;
    animation: fadeInUp 0.6s ease forwards;
    display: flex;
    flex-direction: column;
}
```

---

### 6️⃣ REEMPLAZAR: CSS de .platform-tabs

**BUSCA ESTO:**
```css
.platform-tabs {
    display: flex;
    gap: var(--space-md);
    margin-bottom: var(--space-xl);
    border-bottom: 1px solid var(--border-color);
}
```

**REEMPLAZA POR:**
```css
.platform-tabs {
    display: flex;
    gap: var(--space-lg);
    margin-bottom: var(--space-lg);
    border-bottom: 1px solid var(--border-color);
    padding-bottom: var(--space-md);
}
```

---

### 7️⃣ REEMPLAZAR: CSS responsive

**BUSCA ESTA SECCIÓN:**
```css
@media (max-width: 768px) {
    .soundcloud-wrapper {
        padding: var(--space-lg);
    }

    .soundcloud-cta {
        grid-template-columns: 1fr;
    }
    
    .soundcloud-highlights {
        grid-template-columns: 1fr 1fr;
    }

    .spotify-previews {
        grid-template-columns: 1fr;
    }
```

**REEMPLAZA POR:**
```css
@media (max-width: 768px) {
    .soundcloud-wrapper {
        padding: var(--space-lg);
    }

    .soundcloud-cta {
        grid-template-columns: 1fr;
        gap: var(--space-lg);
    }
    
    .soundcloud-highlights {
        grid-template-columns: 1fr;
    }

    .spotify-previews {
        grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
        gap: var(--space-sm);
    }

    .preview-card {
        padding: var(--space-sm);
    }

    .tab-btn {
        padding: var(--space-sm) var(--space-md);
        font-size: 0.8rem;
    }
```

---

## ✅ Resultado esperado:

✔️ **Desktop:** 
- SoundCloud card a la izquierda (ancho reducido)
- Highlights a la derecha en 2 columnas
- Spotify grid: 4-5 cards por fila (más compactas)

✔️ **Mobile:**
- SoundCloud full width con highlights en 1 columna
- Spotify grid: 2 cards por fila
- Todo se ve proporcional y limpio

✔️ **Visual:**
- Menos padding general
- Cards más pequeñas pero legibles
- Espaciado coherente con el resto de la página
- No parece "pegado" ni desproporcionado

---

## 📐 Espacio total después:

- **Desktop width:** 1400px
- **Spotify cards:** ~220px each + gap
- **Total por fila:** ~4-5 cards
- **Mobile:** 2 cards + full width SoundCloud

¿Aplicamos esto? 🎯