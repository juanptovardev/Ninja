# 🥷 NINJA SKILL — UI & VISUALES
## Cómo construir interfaces de nivel élite

Repos fuente: Aceternity UI, Magic UI, Motion Primitives, GSAP, tsParticles, shadcn/ui, Eldora UI, Background Snippets

---

## Stack Visual Recomendado

```
BASE          → shadcn/ui + Radix Primitives
ANIMACIONES   → Framer Motion + GSAP
EFECTOS HERO  → Aceternity UI + Magic UI
EXTRAS        → tsParticles + Lottie + Eldora UI
ICONOS        → Lucide + Animated Heroicons
FONDOS        → Background Snippets
EDITOR        → Novel (WYSIWYG tipo Notion)
```

---

## Inicialización Rápida (shadcn + Framer)
```bash
# Nuevo proyecto Next.js con el stack completo Ninja
npx create-next-app@latest my-app --typescript --tailwind --app --src-dir
cd my-app

# Instalar shadcn/ui
npx shadcn@latest init

# Instalar librerías de animación
npm i motion gsap @gsap/react

# Instalar tsParticles
npm i @tsparticles/react @tsparticles/slim

# Instalar Lucide
npm i lucide-react

# Agregar componentes shadcn
npx shadcn@latest add button card dialog input table sheet toast
```

---

## Cómo usar Aceternity UI
1. Ir a https://ui.aceternity.com/components
2. Seleccionar el componente (ej. `Spotlight`)
3. Copiar el código `.tsx` en `src/shared/components/ui/spotlight.tsx`
4. Ajustar clases de Tailwind y colores al diseño del proyecto

**Componentes más usados:**
- `Spotlight` → Efecto de luz dinámica en hero sections
- `Card 3D` → Tarjetas con tilt al hover
- `Particle Background` → Fondos de partículas tipo constelación
- `Glowing Stars` → Estrellas animadas para fondos oscuros
- `Infinite Moving Cards` → Carruseles de testimonios/logos

---

## Cómo usar Magic UI
```bash
npx magicui-cli@latest add globe
# o copiar directamente de https://magicui.design/docs/components
```

**Componentes más usados:**
- `Globe` → Globo 3D interactivo (perfecto para hero sections SaaS)
- `Marquee` → Scroll infinito de logos de clientes o tecnologías
- `Shimmer Button` → CTAs con efecto brillante
- `Animated Beam` → Líneas de flujo entre elementos
- `Text Reveal` → Texto que aparece en scroll

---

## Fondos CSS (Background Snippets)
```css
/* Aurora Borealis */
.aurora-bg {
  background: linear-gradient(to right, #0f0c29, #302b63, #24243e);
  position: relative;
  overflow: hidden;
}
.aurora-bg::before {
  content: '';
  position: absolute;
  inset: 0;
  background: radial-gradient(ellipse at 50% 50%, rgba(120, 119, 198, 0.3), transparent 70%);
  animation: aurora 8s ease-in-out infinite alternate;
}
@keyframes aurora {
  0% { transform: scale(1) translate(-10%, -10%); }
  100% { transform: scale(1.5) translate(10%, 10%); }
}

/* Grid Pattern */
.grid-bg {
  background-image: linear-gradient(rgba(255,255,255,.05) 1px, transparent 1px),
                    linear-gradient(90deg, rgba(255,255,255,.05) 1px, transparent 1px);
  background-size: 50px 50px;
}
```

---

## Jerarquía de Decisión de Animación

| Caso | Herramienta | Ejemplo |
|------|-------------|---------|
| Hover / Focus simple | CSS transition | `hover:scale-105` |
| Entrada/salida de elemento | Framer Motion | `AnimatePresence` |
| Layout shift | Framer Motion | `layout prop` |
| Scroll reveal | Framer Motion | `useInView` |
| Scroll-pin + timeline complejo | GSAP ScrollTrigger | Demos tipo Apple |
| Hero con partículas | tsParticles | Fondo con nodos conectados |
| Animación vectorial | Lottie | Loading screens, onboarding |
