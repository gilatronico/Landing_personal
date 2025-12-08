# 🎯 PROMPT CURSOR - Integrar Crypto Prices con CoinGecko

## Copiar y pegar COMPLETO en Cursor

```
Integra una sección de cotizaciones de criptoactivos en mi portfolio profesional usando CoinGecko API.

OBJETIVO: Agregar sección elegante con precios en tiempo real de 7 cryptos (BTC, ETH, SOL, AVAX, XMR, BNB, XRP).

---

## UBICACIÓN: 
- Agrega la sección ANTES del footer
- DESPUÉS de la sección "Artículos & Publicaciones"
- ANTES del cierre </main>

---

## 1. HTML A AGREGAR:

```html
<!-- Crypto Prices Section -->
<section id="crypto-prices" class="section section-light" aria-label="Cotizaciones de criptoactivos">
    <div class="container">
        <div class="section-header fade-in">
            <h2>Mercado de Criptoactivos</h2>
            <p>Cotizaciones en tiempo real de los principales activos digitales</p>
        </div>

        <div class="crypto-prices-grid" id="cryptoPricesGrid">
            <div class="crypto-loading">
                <div class="spinner"></div>
                <p>Cargando cotizaciones...</p>
            </div>
        </div>

        <div class="crypto-footer">
            <p class="crypto-timestamp">Última actualización: <span id="cryptoTimestamp">--:--</span></p>
            <button class="btn btn-secondary btn-sm" onclick="refreshCryptoPrices()" id="refreshBtn">
                🔄 Actualizar
            </button>
        </div>
    </div>
</section>
```

---

## 2. CSS A AGREGAR (al final del <style>):

```css
/* ============================================
   CRYPTO PRICES SECTION
   ============================================ */

.crypto-prices-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: var(--space-md);
    margin: var(--space-2xl) 0;
}

.crypto-card {
    background: var(--bg-secondary);
    border-radius: var(--radius-md);
    padding: var(--space-md);
    border-top: 4px solid;
    box-shadow: var(--shadow-sm);
    transition: all var(--transition-base);
    display: flex;
    flex-direction: column;
    gap: 8px;
    cursor: pointer;
}

.crypto-card:hover {
    box-shadow: var(--shadow-md);
    transform: translateY(-4px);
}

.crypto-symbol {
    font-size: 0.75rem;
    font-weight: 700;
    color: var(--text-secondary);
    text-transform: uppercase;
    letter-spacing: 0.05em;
}

.crypto-name {
    font-size: 1rem;
    font-weight: 600;
    color: var(--text-primary);
}

.crypto-price {
    font-size: 1.3rem;
    font-weight: 700;
    color: var(--accent-primary);
    line-height: 1;
}

.crypto-change {
    display: flex;
    align-items: center;
    gap: 6px;
    font-size: 0.85rem;
    font-weight: 600;
}

.crypto-change.positive {
    color: #10B981;
}

.crypto-change.negative {
    color: #EF4444;
}

.crypto-change.neutral {
    color: var(--text-secondary);
}

.crypto-change-indicator {
    font-size: 1.2rem;
    line-height: 1;
}

.crypto-loading {
    grid-column: 1 / -1;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: var(--space-2xl);
    gap: var(--space-md);
    color: var(--text-secondary);
}

.spinner {
    width: 32px;
    height: 32px;
    border: 3px solid var(--border-light);
    border-top-color: var(--accent-primary);
    border-radius: 50%;
    animation: spin 0.8s linear infinite;
}

@keyframes spin {
    to { transform: rotate(360deg); }
}

.crypto-error {
    grid-column: 1 / -1;
    padding: var(--space-lg);
    background: rgba(239, 68, 68, 0.1);
    border-left: 4px solid #EF4444;
    border-radius: var(--radius-md);
    color: #EF4444;
    font-size: 0.9rem;
}

.crypto-footer {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-top: var(--space-lg);
    padding-top: var(--space-lg);
    border-top: 1px solid var(--border-light);
    gap: var(--space-md);
}

.crypto-timestamp {
    font-size: 0.85rem;
    color: var(--text-secondary);
    margin: 0;
}

.btn-sm {
    padding: 8px 16px;
    font-size: 0.9rem;
}

.btn.btn-secondary {
    background: var(--bg-secondary);
    color: var(--text-primary);
    border: 1px solid var(--border-light);
}

.btn.btn-secondary:hover {
    background: var(--border-light);
    box-shadow: var(--shadow-sm);
}

@media (max-width: 768px) {
    .crypto-prices-grid {
        grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
        gap: var(--space-sm);
    }

    .crypto-card {
        padding: var(--space-sm);
    }

    .crypto-name {
        font-size: 0.9rem;
    }

    .crypto-price {
        font-size: 1.1rem;
    }

    .crypto-footer {
        flex-direction: column;
        align-items: flex-start;
    }
}
```

---

## 3. JAVASCRIPT A AGREGAR (antes del </body>):

```javascript
// ============================================
// CRYPTO PRICES - CoinGecko API
// ============================================

const CRYPTO_COLORS = {
    bitcoin: '#F7931A',
    ethereum: '#627EEA',
    solana: '#14F195',
    avalanche: '#E84142',
    monero: '#FF6600',
    binancecoin: '#F3BA2F',
    ripple: '#23292F'
};

const CRYPTOS = [
    { id: 'bitcoin', symbol: 'BTC', name: 'Bitcoin' },
    { id: 'ethereum', symbol: 'ETH', name: 'Ethereum' },
    { id: 'solana', symbol: 'SOL', name: 'Solana' },
    { id: 'avalanche', symbol: 'AVAX', name: 'Avalanche' },
    { id: 'monero', symbol: 'XMR', name: 'Monero' },
    { id: 'binancecoin', symbol: 'BNB', name: 'BNB' },
    { id: 'ripple', symbol: 'XRP', name: 'Ripple' }
];

async function fetchCryptoPrices() {
    const grid = document.getElementById('cryptoPricesGrid');
    
    try {
        const ids = CRYPTOS.map(c => c.id).join(',');
        const endpoint = `https://api.coingecko.com/api/v3/simple/price?ids=${ids}&vs_currencies=usd&include_24hr_change=true`;

        const response = await fetch(endpoint);

        if (!response.ok) {
            throw new Error('Error fetching prices');
        }

        const data = await response.json();
        renderCryptoPrices(data);
        updateTimestamp();

    } catch (error) {
        console.error('Crypto fetch error:', error);
        grid.innerHTML = `<div class="crypto-error">⚠️ Error al cargar cotizaciones. Intenta de nuevo en unos momentos.</div>`;
    }
}

function renderCryptoPrices(data) {
    const grid = document.getElementById('cryptoPricesGrid');
    grid.innerHTML = '';

    CRYPTOS.forEach(crypto => {
        const cryptoData = data[crypto.id];
        if (!cryptoData) return;

        const price = cryptoData.usd;
        const change24h = cryptoData.usd_24h_change || 0;
        const changeClass = change24h > 0 ? 'positive' : change24h < 0 ? 'negative' : 'neutral';
        const changeSymbol = change24h > 0 ? '↑' : change24h < 0 ? '↓' : '→';

        const card = document.createElement('div');
        card.className = 'crypto-card fade-in visible';
        card.style.borderTopColor = CRYPTO_COLORS[crypto.id];

        card.innerHTML = `
            <div class="crypto-symbol">${crypto.symbol}</div>
            <div class="crypto-name">${crypto.name}</div>
            <div class="crypto-price">$${price.toLocaleString('en-US', {
                maximumFractionDigits: price > 1 ? 0 : 2,
                minimumFractionDigits: 0
            })}</div>
            <div class="crypto-change ${changeClass}">
                <span class="crypto-change-indicator">${changeSymbol}</span>
                <span>${Math.abs(change24h).toFixed(2)}%</span>
            </div>
        `;

        grid.appendChild(card);
    });
}

function updateTimestamp() {
    const now = new Date();
    const hours = String(now.getHours()).padStart(2, '0');
    const minutes = String(now.getMinutes()).padStart(2, '0');
    document.getElementById('cryptoTimestamp').textContent = `${hours}:${minutes}`;
}

function refreshCryptoPrices() {
    const btn = document.getElementById('refreshBtn');
    btn.disabled = true;
    btn.textContent = '⏳ Actualizando...';
    
    fetchCryptoPrices().finally(() => {
        btn.disabled = false;
        btn.textContent = '🔄 Actualizar';
    });
}

setInterval(fetchCryptoPrices, 5 * 60 * 1000);

document.addEventListener('DOMContentLoaded', fetchCryptoPrices);
```

---

## DETALLES IMPORTANTES:

1. **Ubicación del HTML:** Entre sección "Artículos" y el footer
2. **CSS:** Agregar al final del <style>, antes del </style>
3. **JavaScript:** Agregar antes del </body>

4. **Características:**
   - SIN API KEY requerida
   - Auto-refresh cada 5 minutos
   - Botón refresh manual
   - Responsive perfecto
   - Dark mode compatible
   - Loading spinner
   - Error handling

5. **Cryptos incluidas:** BTC, ETH, SOL, AVAX, XMR, BNB, XRP

6. **Colores por crypto:**
   - BTC: Naranja (#F7931A)
   - ETH: Púrpura (#627EEA)
   - SOL: Verde (#14F195)
   - AVAX: Rojo (#E84142)
   - XMR: Naranja oscuro (#FF6600)
   - BNB: Amarillo (#F3BA2F)
   - XRP: Gris (#23292F)

---

## DESPUÉS DE AGREGAR:

✓ Recarga la página en navegador
✓ Espera 3-5 segundos a que carguen las cotizaciones
✓ Verifica que aparezcan las 7 tarjetas
✓ Prueba el botón "Actualizar"
✓ Verifica el hover effect (sube la tarjeta)
✓ Prueba en mobile
✓ Prueba dark mode

**¡Listo! Sin pasos adicionales necesarios.**
```

---

## 📋 RESUMEN PARA CURSOR

**Copiar TODO el bloque anterior** (desde "Integra una sección..." hasta "...Sin pasos adicionales necesarios.")

**Pegar en Cursor** → Enter → Esperar a que procese

**Resultado:** Sección de crypto completamente integrada y funcional ✨

---

## 🚀 ALTERNATIVE (Más corto):

Si prefieres algo más breve, usa esto:

```
Agrega sección de cotizaciones crypto a mi portfolio:

1. HTML: Sección con id="crypto-prices" ANTES del footer
2. CSS: Grid responsive con tarjetas crypto (border-top color)
3. JS: Fetch CoinGecko API, muestra BTC/ETH/SOL/AVAX/XMR/BNB/XRP
4. Refresh: Auto cada 5min + botón manual
5. Estilos: Colores por crypto, hover effects, dark mode compatible

API: https://api.coingecko.com/api/v3/simple/price (public, CORS enabled)
```

---

**¿Cuál prefieres? ¿El completo o el breve?**