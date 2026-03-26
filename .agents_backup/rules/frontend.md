# 🥷 NINJA — FRONTEND RULES

Basadas en los repositorios:
- `thedaviddias/Front-End-Checklist` → https://github.com/thedaviddias/Front-End-Checklist
- `shadcn-ui/ui` → https://github.com/shadcn-ui/ui
- `joshbuchea/HEAD` → https://github.com/joshbuchea/HEAD

---

## Head Estándar Ninja (SEO / Performance)
```html
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Descripción de la página (max 160 chars)" />
  
  <!-- OG / Social -->
  <meta property="og:title" content="Título" />
  <meta property="og:description" content="Descripción" />
  <meta property="og:image" content="https://dominio.com/og-image.png" />
  <meta property="og:url" content="https://dominio.com" />
  <meta name="twitter:card" content="summary_large_image" />

  <!-- Favicon -->
  <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
  <link rel="apple-touch-icon" href="/apple-touch-icon.png" />
  
  <!-- Fonts (Google Fonts) -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  
  <title>Página | Ninja App</title>
</head>
```

## Patrón de Componente (cva + forwardRef)
```tsx
// Siempre seguir este patrón para componentes UI:
import { cva, type VariantProps } from "class-variance-authority"
import { cn } from "@/shared/lib/utils"

const buttonVariants = cva(
  "inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-2 disabled:opacity-50",
  {
    variants: {
      variant: {
        default: "bg-primary text-primary-foreground hover:bg-primary/90",
        destructive: "bg-destructive text-destructive-foreground hover:bg-destructive/90",
        outline: "border border-input bg-background hover:bg-accent",
        ghost: "hover:bg-accent hover:text-accent-foreground",
      },
      size: {
        sm: "h-8 px-3 text-xs",
        md: "h-10 px-4 py-2",
        lg: "h-12 px-8 text-lg",
      },
    },
    defaultVariants: { variant: "default", size: "md" },
  }
)

interface ButtonProps
  extends React.ButtonHTMLAttributes<HTMLButtonElement>,
    VariantProps<typeof buttonVariants> {
  isLoading?: boolean
}

const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
  ({ className, variant, size, isLoading, children, disabled, ...props }, ref) => (
    <button
      ref={ref}
      className={cn(buttonVariants({ variant, size, className }))}
      disabled={isLoading || disabled}
      {...props}
    >
      {isLoading ? <span className="animate-spin">⟳</span> : children}
    </button>
  )
)
Button.displayName = "Button"
export { Button, buttonVariants }
```

## Patrón de Animación (Framer Motion → GSAP)
```tsx
// SIMPLE (Framer Motion):
import { motion, AnimatePresence } from "framer-motion"

<AnimatePresence>
  {isVisible && (
    <motion.div
      key="element"
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      exit={{ opacity: 0, y: -20 }}
      transition={{ duration: 0.3, ease: "easeOut" }}
      whileHover={{ scale: 1.02 }}
      whileTap={{ scale: 0.98 }}
    >
      {children}
    </motion.div>
  )}
</AnimatePresence>

// COMPLEJO (GSAP ScrollTrigger):
import { useGSAP } from "@gsap/react"
import gsap from "gsap"
import ScrollTrigger from "gsap/ScrollTrigger"
gsap.registerPlugin(ScrollTrigger)

useGSAP(() => {
  gsap.from(".feature-card", {
    scrollTrigger: {
      trigger: ".features-section",
      start: "top 80%",
      toggleActions: "play none none reverse",
    },
    y: 60, opacity: 0, duration: 0.8, stagger: 0.15, ease: "power3.out",
  })
}, [])
```

## Checklist Frontend Pre-Deploy
- [ ] Lighthouse Performance 90+
- [ ] Lighthouse Accessibility 90+
- [ ] Meta title y description únicos por página
- [ ] OG image configurada (1200x630px)
- [ ] Todas las imágenes con `alt` text
- [ ] Dark mode funcionando
- [ ] Responsive en mobile (375px) y desktop (1440px)
- [ ] Fuentes cargadas con `rel="preconnect"` 
- [ ] NUNCA `console.log` en código de producción
- [ ] `prefers-reduced-motion` respetado en animaciones
