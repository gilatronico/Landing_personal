# 🎵 Cursor Prompt: Mejora del Perfil Artista (Spotify-Style)

## 📋 CONTEXTO

Tengo un HTML del perfil "Artista" que está muy bien estructurado con estilo Spotify. 
Necesito mejorarlo con:
1. **Nuevas secciones** para contenido más rico
2. **Interactividad mejorada** (sin dependencias)
3. **Visual enhancements** más sofisticados
4. **Mejor storytelling** para artista

---

## ✅ LO QUE YA ESTÁ BIEN (MANTENER)

- ✅ Paleta Spotify Dark (Negro profundo + Verde Spotify)
- ✅ Tipografía: Inter + Circular Std
- ✅ CSS Variables bien organizadas
- ✅ Responsive design completo
- ✅ Estructura semántica HTML5
- ✅ Accesibilidad (ARIA labels, focus states)
- ✅ Track list Spotify-style (funcional)
- ✅ Release cards con hover effects
- ✅ Form validation
- ✅ Smooth scroll + fade-in animations

---

## 🚀 MEJORAS PROPUESTAS

### **1. HERO MEJORADO** (Critical)

**Problema actual:**
- Avatar muy simple (solo "AG")
- No hay visual storytelling
- Falta de personalidad artística

**Mejora:**
```html
<!-- En lugar de solo "AG" -->
<div class="hero-avatar">
  <!-- Opción A: Placeholder animado -->
  <div class="avatar-image">🎧</div> 
  <!-- O con imagen real: <img src="avatar.jpg"> -->
  
  <!-- Agregar badge de estado -->
  <span class="avatar-badge">LIVE NOW</span>
</div>

<!-- Agregar "Hero quote" o tagline artístico -->
<div class="hero-tagline">
  "Fusionando sonidos del futuro con ritmos globales"
</div>
```

**Estilos:**
```css
.avatar-badge {
  position: absolute;
  bottom: 0;
  right: 0;
  background: var(--accent-pink);
  color: white;
  padding: 4px 12px;
  border-radius: 20px;
  font-size: 0.75rem;
  font-weight: 700;
  animation: pulse 2s infinite;
}

@keyframes pulse {
  0%, 100% { opacity: 1; }
  50% { opacity: 0.7; }
}
```

---

### **2. BIO/ABOUT EXPANDIDO** (High Priority)

**Agregar nueva sección:**
```html
<section id="about" class="section section-about" aria-label="Sobre el artista">
  <div class="container">
    <div class="about-grid">
      <!-- Columna 1: Bio narrativa -->
      <div class="about-bio fade-in">
        <h3>Mi Historia</h3>
        <p>Desde 2018, he estado exploando los límites de la música electrónica...</p>
        <p>Mi sonido mezcla lo experimental con lo accesible...</p>
        
        <!-- Influencias -->
        <div class="influences">
          <h4>Influencias</h4>
          <div class="influence-tags">
            <span>Daft Punk</span>
            <span>Richie Hawtin</span>
            <span>Jon Hopkins</span>
            <span>Caribou</span>
          </div>
        </div>
      </div>
      
      <!-- Columna 2: Stats/Achievements -->
      <div class="about-stats fade-in">
        <div class="stat-card">
          <div class="stat-number">10+</div>
          <div class="stat-text">Años produciendo</div>
        </div>
        <div class="stat-card">
          <div class="stat-number">50+</div>
          <div class="stat-text">Tracks publicados</div>
        </div>
        <div class="stat-card">
          <div class="stat-number">500K+</div>
          <div class="stat-text">Streams totales</div>
        </div>
        <div class="stat-card">
          <div class="stat-number">30+</div>
          <div class="stat-text">Shows en vivo</div>
        </div>
      </div>
    </div>
  </div>
</section>
```

**Estilos:**
```css
.section-about {
  background: linear-gradient(135deg, var(--bg-card) 0%, var(--bg-secondary) 100%);
  border: 1px solid var(--border-color);
  border-radius: var(--radius-lg);
  margin: var(--space-xl) 0;
}

.about-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: var(--space-2xl);
  align-items: start;
}

.about-bio h3 {
  color: var(--spotify-green);
  margin-bottom: var(--space-lg);
}

.about-bio p {
  margin-bottom: var(--space-md);
  line-height: 1.8;
}

.influence-tags {
  display: flex;
  flex-wrap: wrap;
  gap: var(--space-sm);
  margin-top: var(--space-md);
}

.influence-tags span {
  padding: var(--space-sm) var(--space-md);
  background: var(--bg-active);
  border: 1px solid var(--border-color);
  border-radius: var(--radius-full);
  font-size: 0.875rem;
}

.about-stats {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: var(--space-md);
}

.stat-card {
  background: var(--bg-secondary);
  padding: var(--space-lg);
  border-radius: var(--radius-md);
  text-align: center;
  border: 1px solid var(--border-color);
}

.stat-number {
  font-size: 2rem;
  font-weight: 700;
  color: var(--spotify-green);
  margin-bottom: var(--space-xs);
}
```

---

### **3. GALLERY/MEDIA SECTION** (High Priority)

**Nueva sección para fotos/vídeos:**
```html
<section id="gallery" class="section" aria-label="Galería">
  <div class="container">
    <div class="section-header fade-in">
      <h2>Galería</h2>
      <p>Momentos detrás de cámaras, conciertos en vivo y sesiones de estudio.</p>
    </div>
    
    <div class="gallery-grid">
      <div class="gallery-item fade-in">
        <div class="gallery-media">
          <img src="placeholder.jpg" alt="Studio session">
          <div class="media-overlay">
            <button class="media-play-btn">▶</button>
          </div>
        </div>
        <div class="media-caption">Studio Session 2025</div>
      </div>
      <!-- Repetir 5-6 items -->
    </div>
  </div>
</section>
```

**Estilos:**
```css
.gallery-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: var(--space-lg);
  margin-top: var(--space-xl);
}

.gallery-item {
  position: relative;
  overflow: hidden;
  border-radius: var(--radius-lg);
  cursor: pointer;
}

.gallery-media {
  aspect-ratio: 1;
  background: linear-gradient(135deg, var(--spotify-green) 0%, var(--accent-purple) 100%);
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
}

.gallery-media img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.gallery-item:hover .gallery-media img {
  transform: scale(1.1);
}

.media-overlay {
  position: absolute;
  inset: 0;
  background: rgba(0, 0, 0, 0.5);
  display: flex;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.gallery-item:hover .media-overlay {
  opacity: 1;
}

.media-play-btn {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background: var(--spotify-green);
  border: none;
  color: var(--bg-primary);
  font-size: 1.5rem;
  cursor: pointer;
  transition: transform 0.3s ease;
}

.gallery-item:hover .media-play-btn {
  transform: scale(1.15);
}

.media-caption {
  padding: var(--space-md);
  color: var(--text-secondary);
  font-size: 0.875rem;
  font-weight: 500;
}
```

---

### **4. COLLABORATIONS SECTION** (Medium Priority)

**Nueva sección para colaboradores:**
```html
<section id="collaborations" class="section" aria-label="Colaboraciones">
  <div class="container">
    <div class="section-header fade-in">
      <h2>Colaboraciones</h2>
      <p>Trabajos con otros artistas y productores talentosos.</p>
    </div>
    
    <div class="collab-grid">
      <div class="collab-card fade-in">
        <div class="collab-artist">
          <div class="artist-avatar">👨‍🎨</div>
          <div class="artist-info">
            <div class="artist-name">Nombre Artista</div>
            <div class="artist-role">Vocalist / Producer</div>
          </div>
        </div>
        <div class="collab-track">
          <div class="track-title">Nombre del Track</div>
          <div class="track-stats">
            <span>500K streams</span>
            <span>Released 2024</span>
          </div>
        </div>
        <a href="#" class="collab-link">Escuchar en Spotify →</a>
      </div>
      <!-- Repetir 3-4 items -->
    </div>
  </div>
</section>
```

**Estilos:**
```css
.collab-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: var(--space-lg);
  margin-top: var(--space-xl);
}

.collab-card {
  background: var(--bg-card);
  padding: var(--space-lg);
  border-radius: var(--radius-lg);
  border: 1px solid var(--border-color);
  transition: all var(--transition-base);
}

.collab-card:hover {
  border-color: var(--spotify-green);
  transform: translateY(-4px);
}

.collab-artist {
  display: flex;
  align-items: center;
  gap: var(--space-md);
  margin-bottom: var(--space-lg);
}

.artist-avatar {
  width: 60px;
  height: 60px;
  border-radius: var(--radius-full);
  background: linear-gradient(135deg, var(--spotify-green) 0%, var(--accent-purple) 100%);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
}

.artist-info {
  flex: 1;
}

.artist-name {
  font-weight: 600;
  color: var(--text-primary);
}

.artist-role {
  font-size: 0.875rem;
  color: var(--text-secondary);
}

.collab-track {
  margin-bottom: var(--space-md);
  padding-bottom: var(--space-md);
  border-bottom: 1px solid var(--border-color);
}

.track-title {
  font-weight: 600;
  color: var(--text-primary);
  margin-bottom: var(--space-xs);
}

.track-stats {
  display: flex;
  gap: var(--space-sm);
  font-size: 0.75rem;
  color: var(--text-tertiary);
}

.track-stats span {
  background: var(--bg-hover);
  padding: 2px 8px;
  border-radius: 4px;
}

.collab-link {
  color: var(--spotify-green);
  font-weight: 600;
  transition: color var(--transition-base);
}

.collab-link:hover {
  color: var(--spotify-green-hover);
}
```

---

### **5. PODCAST/INTERVIEW SECTION** (Medium Priority)

**Sección para podcasts o interviews:**
```html
<section id="interviews" class="section" aria-label="Interviews y Podcasts">
  <div class="container">
    <div class="section-header fade-in">
      <h2>Interviews & Podcasts</h2>
      <p>Conversaciones sobre mi música, proceso creativo y visión artística.</p>
    </div>
    
    <div class="interviews-list">
      <div class="interview-card fade-in">
        <div class="interview-meta">
          <span class="interview-date">15 Mar 2025</span>
          <span class="interview-duration">45 min</span>
        </div>
        <div class="interview-content">
          <h3>Mi Proceso Creativo - Podcast XYZ</h3>
          <p>Una conversación profunda sobre cómo creo mis tracks, inspiraciones y el futuro de la música electrónica.</p>
          <a href="#" class="interview-listen">Escuchar →</a>
        </div>
      </div>
      <!-- Repetir items -->
    </div>
  </div>
</section>
```

---

### **6. ENHANCED CONTACT CTA** (Medium Priority)

**Mejorar sección de contacto:**
```html
<!-- Agregar antes del formulario -->
<div class="booking-options fade-in">
  <div class="booking-card">
    <div class="booking-icon">🎤</div>
    <h4>Sesión DJ</h4>
    <p>Disponible para DJ sets en eventos y festivales</p>
  </div>
  <div class="booking-card">
    <div class="booking-icon">🎵</div>
    <h4>Colaboración Remixes</h4>
    <p>Interesado en remix y producción colaborativa</p>
  </div>
  <div class="booking-card">
    <div class="booking-icon">🎧</div>
    <h4>Consultoría Sonic</h4>
    <p>Asesoramiento en dirección artística y sonido</p>
  </div>
</div>
```

**Estilos:**
```css
.booking-options {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: var(--space-lg);
  margin-bottom: var(--space-3xl);
}

.booking-card {
  background: var(--bg-card);
  padding: var(--space-lg);
  border-radius: var(--radius-lg);
  text-align: center;
  border: 1px solid var(--border-color);
  transition: all var(--transition-base);
}

.booking-card:hover {
  border-color: var(--spotify-green);
  background: var(--bg-hover);
}

.booking-icon {
  font-size: 2rem;
  margin-bottom: var(--space-md);
}

.booking-card h4 {
  margin-bottom: var(--space-sm);
  color: var(--text-primary);
}

.booking-card p {
  font-size: 0.875rem;
  color: var(--text-secondary);
}
```

---

### **7. MUSICALES/AWARDS SECTION** (Low Priority)

**Para premios o reconocimientos:**
```html
<section id="awards" class="section" aria-label="Premios y reconocimientos">
  <div class="container">
    <div class="section-header fade-in">
      <h2>Reconocimientos</h2>
    </div>
    
    <div class="awards-timeline">
      <div class="award-item fade-in">
        <div class="award-year">2024</div>
        <div class="award-content">
          <h4>Mejor Productor Electrónico - Festival XYZ</h4>
          <p>Reconocimiento por innovación y calidad en producción</p>
        </div>
      </div>
      <!-- Repetir items -->
    </div>
  </div>
</section>
```

---

### **8. INTERACTIVE ELEMENTS** (High Priority)

**Mejoras de interactividad:**
```javascript
// Dark/Light Mode Toggle (opcional pero bonito)
const themeToggle = document.createElement('button');
themeToggle.className = 'theme-toggle';
themeToggle.innerHTML = '🌙';
themeToggle.addEventListener('click', () => {
  document.body.classList.toggle('light-mode');
  localStorage.setItem('theme', document.body.classList.contains('light-mode') ? 'light' : 'dark');
});

// Play/Pause Audio Visualization (si se agrega audio)
const visualizer = {
  init() {
    const playButtons = document.querySelectorAll('.track-play-btn');
    playButtons.forEach(btn => {
      btn.addEventListener('click', this.handlePlay.bind(this));
    });
  },
  
  handlePlay(e) {
    const btn = e.target;
    const isPlaying = btn.dataset.playing === 'true';
    btn.dataset.playing = !isPlaying;
    btn.classList.toggle('playing');
  }
};

visualizer.init();
```

---

## 📊 NUEVAS SECCIONES (Orden recomendado)

1. ✅ **Hero mejorado** (mejor avatar + tagline)
2. ✅ **About/Bio** (nueva sección con stats)
3. ✅ **Gallery** (fotos/videos)
4. ✅ **Collaborations** (artistas con los que trabaja)
5. ✅ **Top Tracks** (ya existe, mejorar)
6. ✅ **Releases** (ya existe)
7. ✅ **Interviews** (podcasts)
8. ✅ **DJ Sessions** (ya existe)
9. ✅ **Awards** (opcional)
10. ✅ **Contact mejorado** (booking options + form)

---

## 🎨 VISUAL ENHANCEMENTS

### Animaciones adicionales:
```css
/* Hover glow en cards */
.spotify-glow:hover {
  box-shadow: 0 0 30px rgba(29, 185, 84, 0.4);
}

/* Gradient text */
.gradient-text {
  background: linear-gradient(135deg, var(--spotify-green) 0%, var(--accent-purple) 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

/* Animated border */
.animated-border {
  position: relative;
  border: 2px solid transparent;
  background-image: linear-gradient(var(--bg-card), var(--bg-card)), 
                    linear-gradient(135deg, var(--spotify-green), var(--accent-purple));
  background-origin: border-box;
  background-clip: padding-box, border-box;
  transition: all 0.3s ease;
}
```

---

## 🔗 INTEGRACIONES SUGERIDAS

**Para futuro (sin cambiar HTML actual):**
- Spotify Web API (mostrar streams en tiempo real)
- YouTube embeds para vídeos
- Newsletter subscription
- Calendario de eventos (con iCal export)
- Discord/Telegram invite links

---

## ✨ PRIORIZACIÓN PARA CURSOR

**CRÍTICO (Haz primero):**
1. Hero mejorado (avatar + badge)
2. About/Bio section
3. Gallery section

**IMPORTANTE (Haz después):**
4. Collaborations
5. Enhanced contact CTA
6. Interviews

**NICE-TO-HAVE (Opcional):**
7. Awards
8. Interactive theme toggle

---

## 📝 INSTRUCCIONES PARA CURSOR

1. **Mantén TODO del código actual** (no cambies nada que funcione)
2. **Agrega secciones nuevas** entre "Top Tracks" y "DJ Sessions"
3. **Usa las paletas y estilos existentes** (CSS variables)
4. **Asegúrate responsive** en mobile (768px breakpoint)
5. **Mantén accesibilidad** (ARIA labels, focus states)
6. **Agrega fade-in animations** a elementos nuevos
7. **Placeholders para imágenes** (emojis o gradients)

---

## 🎯 RESULTADO ESPERADO

Transformar de:
- ❌ Portfolio básico estilo Spotify

A:
- ✅ **Portfolio artístico profesional** con storytelling
- ✅ **Múltiples puntos de contacto** (booking, collab, etc)
- ✅ **Visual storytelling** (gallery, bios, achievements)
- ✅ **Engagement mejorado** (más secciones para explorar)
- ✅ **Conversion optimizado** (booking CTA destacado)

---

GENERA AHORA EL HTML MEJORADO CON TODAS ESTAS SECCIONES.
Mantén la estructura Spotify-dark original.
Asegúrate 100% responsivo.
Incluye transiciones y animaciones suaves.
