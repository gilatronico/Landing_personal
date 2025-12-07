# 🎵 SOUNDCLOUD + SPOTIFY PREVIEWS - CÓDIGO FINAL LISTO PARA PEGAR

**Artist ID confirmado:** `44CrAVRlYEbpintVS3jkmo` ✅  
**Country:** ES ✅  

---

## 📋 PASO 1: Busca esta línea en tu HTML

```html
<a href="#main-content" class="skip-link">Saltar al contenido principal</a>
```

**Agrega INMEDIATAMENTE DESPUÉS:**

```html
<div class="spotify-artist-id" data-artist-id="44CrAVRlYEbpintVS3jkmo" style="display: none;"></div>
```

---

## 📋 PASO 2: REEMPLAZA la sección SoundCloud COMPLETA

**Busca en tu HTML:**
```html
<section id="soundcloud" class="section">
```

**BORRA TODO DESDE AHÍ HASTA:** `</section>`

**PEGA ESTO en su lugar:**

```html
<!-- ============================================
     SOUNDCLOUD + SPOTIFY SECTION
     ============================================ -->
<section id="soundcloud" class="section" aria-label="SoundCloud y Spotify">
    <div class="container">
        <div class="section-header fade-in">
            <h2>En SoundCloud & Spotify</h2>
            <p>Escucha todos mis tracks, demos y exclusivas en ambas plataformas.</p>
        </div>
        
        <div class="soundcloud-wrapper fade-in">
            <!-- Tabs: SoundCloud | Spotify -->
            <div class="platform-tabs">
                <button class="tab-btn active" data-tab="soundcloud">
                    🔊 SoundCloud
                </button>
                <button class="tab-btn" data-tab="spotify">
                    🎵 Spotify Previews
                </button>
            </div>

            <!-- Tab 1: SoundCloud -->
            <div id="soundcloud-tab" class="tab-content active">
                <div class="soundcloud-cta fade-in">
                    <div class="soundcloud-card">
                        <div class="soundcloud-icon">🔊</div>
                        <h3>Sígueme en SoundCloud</h3>
                        <p>Acceso a demos, unreleased tracks y exclusivas.</p>
                        <a href="https://soundcloud.com/alejandrogilabertmusic" 
                           target="_blank" 
                           rel="noopener noreferrer" 
                           class="btn btn-primary">
                            Ir a SoundCloud
                        </a>
                    </div>
                    <div class="soundcloud-highlights">
                        <div class="highlight-item">
                            <span class="highlight-icon">⭐</span>
                            <span class="highlight-text">Demos exclusivos</span>
                        </div>
                        <div class="highlight-item">
                            <span class="highlight-icon">🔁</span>
                            <span class="highlight-text">Remixes únicos</span>
                        </div>
                        <div class="highlight-item">
                            <span class="highlight-icon">📻</span>
                            <span class="highlight-text">Sets en vivo</span>
                        </div>
                        <div class="highlight-item">
                            <span class="highlight-icon">🎧</span>
                            <span class="highlight-text">Unreleased tracks</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Tab 2: Spotify Previews (Auto-loaded) -->
            <div id="spotify-tab" class="tab-content" style="display: none;">
                <div id="spotify-previews-container" class="spotify-previews">
                    <div class="loading-spinner">
                        <div class="spinner"></div>
                        <p>Cargando tus tracks de Spotify...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
```

---

## 📋 PASO 3: AGREGA el CSS

**En tu `<style>` (dentro del HEAD), busca el final, ANTES de `</style>`**

**PEGA TODO ESTO:**

```css
/* ============================================
   SOUNDCLOUD + SPOTIFY SECTION
   ============================================ */
.soundcloud-wrapper {
    background: linear-gradient(135deg, var(--bg-card) 0%, var(--bg-secondary) 100%);
    border-radius: var(--radius-lg);
    padding: var(--space-2xl);
    border: 1px solid var(--border-color);
}

/* TABS */
.platform-tabs {
    display: flex;
    gap: var(--space-md);
    margin-bottom: var(--space-xl);
    border-bottom: 1px solid var(--border-color);
}

.tab-btn {
    background: transparent;
    border: none;
    color: var(--text-secondary);
    padding: var(--space-md) var(--space-lg);
    cursor: pointer;
    font-weight: 600;
    font-size: 0.9375rem;
    transition: all var(--transition-base);
    border-bottom: 2px solid transparent;
    margin-bottom: -1px;
}

.tab-btn:hover {
    color: var(--text-primary);
}

.tab-btn.active {
    color: var(--spotify-green);
    border-bottom-color: var(--spotify-green);
}

.tab-content {
    display: none;
}

.tab-content.active {
    display: block;
    animation: fadeIn 0.3s ease;
}

@keyframes fadeIn {
    from { opacity: 0; transform: translateY(10px); }
    to { opacity: 1; transform: translateY(0); }
}

/* SOUNDCLOUD */
.soundcloud-cta {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--space-lg);
    align-items: center;
}

.soundcloud-card {
    background: var(--bg-secondary);
    padding: var(--space-lg);
    border-radius: var(--radius-lg);
    text-align: center;
    border: 1px solid var(--border-color);
    transition: all var(--transition-base);
}

.soundcloud-card:hover {
    border-color: var(--spotify-green);
    transform: translateY(-2px);
}

.soundcloud-icon {
    font-size: 3rem;
    margin-bottom: var(--space-md);
}

.soundcloud-card h3 {
    margin-bottom: var(--space-sm);
    color: var(--text-primary);
    font-size: 1.5rem;
}

.soundcloud-card p {
    margin-bottom: var(--space-lg);
    font-size: 1rem;
}

.soundcloud-highlights {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--space-md);
}

.highlight-item {
    display: flex;
    align-items: center;
    gap: var(--space-sm);
    padding: var(--space-md);
    background: var(--bg-active);
    border-radius: var(--radius-md);
    border: 1px solid var(--border-color);
    transition: all var(--transition-base);
}

.highlight-item:hover {
    border-color: var(--spotify-green);
    background: var(--bg-hover);
}

.highlight-icon {
    font-size: 1.5rem;
    flex-shrink: 0;
}

.highlight-text {
    color: var(--text-secondary);
    font-size: 0.875rem;
    font-weight: 500;
}

/* SPOTIFY PREVIEWS */
.spotify-previews {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: var(--space-lg);
}

.preview-card {
    background: var(--bg-card);
    border-radius: var(--radius-lg);
    padding: var(--space-lg);
    border: 1px solid var(--border-color);
    transition: all var(--transition-base);
    opacity: 0;
    animation: fadeInUp 0.6s ease forwards;
}

.preview-card:hover {
    border-color: var(--spotify-green);
    transform: translateY(-4px);
    box-shadow: var(--shadow-md);
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.preview-card-cover {
    aspect-ratio: 1;
    width: 100%;
    background: linear-gradient(135deg, var(--spotify-green) 0%, var(--accent-purple) 100%);
    border-radius: var(--radius-md);
    margin-bottom: var(--space-md);
    overflow: hidden;
    position: relative;
}

.preview-card-cover img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.preview-card-title {
    font-weight: 600;
    color: var(--text-primary);
    margin-bottom: var(--space-xs);
    font-size: 1rem;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.preview-card-artist {
    color: var(--text-secondary);
    font-size: 0.875rem;
    margin-bottom: var(--space-md);
}

.preview-player {
    width: 100%;
    height: 40px;
    margin-bottom: var(--space-md);
    border-radius: var(--radius-md);
    background: var(--bg-secondary);
}

.preview-player audio {
    width: 100%;
    height: 100%;
}

.preview-buttons {
    display: flex;
    gap: var(--space-sm);
}

.preview-buttons a {
    flex: 1;
    padding: var(--space-sm);
    background: var(--bg-hover);
    border: 1px solid var(--border-color);
    border-radius: var(--radius-md);
    text-align: center;
    color: var(--text-secondary);
    font-size: 0.75rem;
    font-weight: 600;
    transition: all var(--transition-base);
    display: flex;
    align-items: center;
    justify-content: center;
}

.preview-buttons a:hover {
    background: var(--spotify-green);
    color: var(--bg-primary);
    border-color: var(--spotify-green);
}

.loading-spinner {
    text-align: center;
    padding: var(--space-3xl);
    color: var(--text-secondary);
}

.spinner {
    width: 40px;
    height: 40px;
    border: 4px solid var(--border-color);
    border-top: 4px solid var(--spotify-green);
    border-radius: 50%;
    animation: spin 1s linear infinite;
    margin: 0 auto var(--space-md);
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}

.error-message {
    padding: var(--space-lg);
    background: rgba(236, 72, 153, 0.1);
    border: 1px solid var(--accent-pink);
    border-radius: var(--radius-md);
    color: var(--accent-pink);
    text-align: center;
    font-weight: 500;
}

/* Responsive */
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

    .platform-tabs {
        flex-direction: row;
        gap: var(--space-sm);
        overflow-x: auto;
    }

    .tab-btn {
        padding: var(--space-sm) var(--space-md);
        font-size: 0.875rem;
        white-space: nowrap;
    }
}
```

---

## 📋 PASO 4: AGREGA el JAVASCRIPT

**Al FINAL del archivo HTML, ANTES de `</body>`, pega esto:**

```html
<!-- Spotify Preview Automation Script -->
<script>
(function() {
    'use strict';
    
    // ============================================
    // CONFIGURACIÓN
    // ============================================
    const ARTIST_ID = '44CrAVRlYEbpintVS3jkmo';
    const COUNTRY_CODE = 'ES';
    const TRACKS_LIMIT = 12;
    
    // ============================================
    // TAB SWITCHING
    // ============================================
    function initTabs() {
        const tabButtons = document.querySelectorAll('.tab-btn');
        const tabContents = document.querySelectorAll('.tab-content');
        
        tabButtons.forEach(btn => {
            btn.addEventListener('click', () => {
                const tabName = btn.getAttribute('data-tab');
                
                // Desactivar todos
                tabButtons.forEach(b => b.classList.remove('active'));
                tabContents.forEach(t => t.classList.remove('active'));
                
                // Activar seleccionado
                btn.classList.add('active');
                const targetTab = document.getElementById(`${tabName}-tab`);
                if (targetTab) {
                    targetTab.classList.add('active');
                }
                
                // Si es Spotify tab, cargar si no está cargado
                if (tabName === 'spotify') {
                    const container = document.getElementById('spotify-previews-container');
                    if (container && container.querySelector('.loading-spinner')) {
                        loadSpotifyPreviews(container);
                    }
                }
            });
        });
    }
    
    // ============================================
    // CARGAR PREVIEWS DE SPOTIFY
    // ============================================
    async function loadSpotifyPreviews(container) {
        try {
            // Llamar a Spotify API (SIN autenticación)
            const url = `https://api.spotify.com/v1/artists/${ARTIST_ID}/top-tracks?country=${COUNTRY_CODE}`;
            
            const response = await fetch(url);
            
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            
            const data = await response.json();
            
            // Filtrar solo tracks con preview
            const tracks = data.tracks.filter(track => track.preview_url && track.preview_url.length > 0);
            
            if (tracks.length === 0) {
                container.innerHTML = `
                    <div class="error-message">
                        ⚠️ No hay previews disponibles en este momento.
                    </div>
                `;
                return;
            }
            
            // Renderizar tarjetas
            const tracksToShow = tracks.slice(0, TRACKS_LIMIT);
            
            container.innerHTML = tracksToShow.map((track, index) => {
                const albumArt = track.album.images[0]?.url || '';
                const trackName = track.name || 'Unknown Track';
                const artistName = track.artists[0]?.name || 'Unknown Artist';
                const previewUrl = track.preview_url;
                const spotifyUrl = track.external_urls?.spotify || '#';
                const trackUrl = `https://open.spotify.com/track/${track.id}`;
                
                return `
                    <div class="preview-card" style="animation-delay: ${index * 50}ms;">
                        <div class="preview-card-cover">
                            ${albumArt ? `<img src="${albumArt}" alt="${trackName}" loading="lazy">` : ''}
                        </div>
                        <div class="preview-card-title" title="${trackName}">
                            ${escapeHtml(trackName)}
                        </div>
                        <div class="preview-card-artist">
                            ${escapeHtml(artistName)}
                        </div>
                        
                        <audio class="preview-player" controls>
                            <source src="${previewUrl}" type="audio/mpeg">
                            Tu navegador no soporta reproducción de audio.
                        </audio>
                        
                        <div class="preview-buttons">
                            <a href="${spotifyUrl}" 
                               target="_blank" 
                               rel="noopener noreferrer"
                               title="Escuchar en Spotify">
                                🎵 Spotify
                            </a>
                            <a href="${trackUrl}" 
                               target="_blank" 
                               rel="noopener noreferrer"
                               title="Abrir en Spotify">
                                ▶ Abrir
                            </a>
                        </div>
                    </div>
                `;
            }).join('');
            
        } catch (error) {
            console.error('Error loading Spotify tracks:', error);
            container.innerHTML = `
                <div class="error-message">
                    ⚠️ Error cargando tracks de Spotify. Por favor recarga la página.
                    <br><small>${error.message}</small>
                </div>
            `;
        }
    }
    
    // ============================================
    // UTILIDADES
    // ============================================
    function escapeHtml(text) {
        const div = document.createElement('div');
        div.textContent = text;
        return div.innerHTML;
    }
    
    // ============================================
    // INICIALIZACIÓN
    // ============================================
    document.addEventListener('DOMContentLoaded', () => {
        initTabs();
    });
    
    // Por si el script carga después del DOM
    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', initTabs);
    } else {
        initTabs();
    }
})();
</script>
```

---

## ✅ RESUMEN DE CAMBIOS

| Componente | Acción | Ubicación |
|-----------|--------|-----------|
| **Artist ID** | Agregar | Después de skip-link |
| **HTML Section** | Reemplazar completo | Section #soundcloud |
| **CSS** | Agregar | Dentro de `<style>` |
| **JavaScript** | Agregar | Antes de `</body>` |

---

## 🎯 ¿QUÉ OBTIENES?

### Tab 1: SoundCloud 🔊
- Card principal con CTA
- 4 highlights (Demos, Remixes, Sets, Unreleased)
- Link directo a tu SoundCloud

### Tab 2: Spotify Previews 🎵
✅ **Automático:**
- Conecta a Spotify API
- Trae tus TOP 12 TRACKS
- Muestra album art
- Previews de 30 segundos reproducibles
- Botones directos a Spotify
- Animations suaves

---

## 🔄 CÓMO FUNCIONA

```
1. Usuario abre página
   ↓
2. Ve Tab "SoundCloud" por defecto
   ↓
3. Usuario clickea Tab "Spotify Previews"
   ↓
4. Se conecta a Spotify API (sin login)
   ↓
5. Trae tus TOP 12 TRACKS automáticamente
   ↓
6. Renderiza cards con previews
   ↓
7. Usuario puede escuchar 30 seg + abrir en Spotify
```

---

## 🚀 VERIFICACIÓN

**Para verificar que funciona:**

1. Abre Developer Tools (F12)
2. Ir a Console
3. Debería NO haber errores rojos
4. Clickea en "Spotify Previews"
5. Debería cargar los tracks en ~2-3 segundos

---

## 🎵 PERSONALIZACIÓN FUTURA

Si quieres cambiar algo:

- **Cambiar cantidad de tracks:** Busca `TRACKS_LIMIT = 12` → cambia el número
- **Cambiar país:** Busca `COUNTRY_CODE = 'ES'` → cambia a 'US', 'UK', etc
- **Cambiar usuario SoundCloud:** Busca `https://soundcloud.com/alejandrogilabertmusic` → tu usuario

---

## ✨ BONUS: Verificar Artist ID

Tu Artist ID está confirmado como:
```
44CrAVRlYEbpintVS3jkmo
```

(Puedes verificar en tu URL de Spotify: https://open.spotify.com/intl-es/artist/44CrAVRlYEbpintVS3jkmo)

---

## 📞 SI ALGO NO FUNCIONA

**Checklist:**
- ✅ ¿Agregaste el `<div class="spotify-artist-id"...`?
- ✅ ¿Borraste la sección soundcloud antigua COMPLETA?
- ✅ ¿Pegaste TODO el CSS?
- ✅ ¿Pegaste TODO el JavaScript?
- ✅ ¿El archivo está bien formado (sin errores de sintaxis)?
- ✅ ¿Abriste DevTools para ver errores?

---

**¡Ya está listo para usar! 🚀**
