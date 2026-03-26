# 🥷 NINJA — SECURITY RULES

Basadas en los repositorios de Fase 5 (Guía 003):
- `OWASP/CheatSheetSeries` → https://github.com/OWASP/CheatSheetSeries
- `gitleaks/gitleaks` → https://github.com/gitleaks/gitleaks
- `helmetjs/helmet` → https://github.com/helmetjs/helmet
- `promptfoo/promptfoo` → https://github.com/promptfoo/promptfoo

---

## Protocolo de Seguridad Ninja

### 1. Headers HTTP
```typescript
// Siempre aplicar Helmet en Express/Fastify:
import helmet from 'helmet'
app.use(helmet({
  contentSecurityPolicy: {
    directives: {
      defaultSrc: ["'self'"],
      scriptSrc: ["'self'", "'unsafe-inline'"],
      styleSrc: ["'self'", "'unsafe-inline'", "https://fonts.googleapis.com"],
      imgSrc: ["'self'", "data:", "https:"],
    },
  },
  hsts: { maxAge: 31536000, includeSubDomains: true, preload: true },
}))
```

### 2. Prevención XSS
- Sanitizar TODOS los inputs de usuario con DOMPurify en frontend
- Escapar contenido dinámico en templates
- NUNCA `dangerouslySetInnerHTML` sin sanitización previa
- CSP headers para bloquear scripts externos no autorizados

### 3. Prevención SQL Injection
- SIEMPRE ORM con consultas parametrizadas (Drizzle/Prisma)
- NUNCA concatenar strings en queries SQL
- Validar tipos y formatos con Zod antes de usar en DB

### 4. Autenticación Segura
```typescript
// Rate limiting en auth endpoints:
import rateLimit from 'express-rate-limit'
const authLimiter = rateLimit({
  windowMs: 60 * 1000, // 1 minuto
  max: 5,              // max 5 intentos
  message: { error: { code: "RATE_LIMITED", message: "Demasiados intentos" } }
})
app.use('/api/v1/auth', authLimiter)

// Hash de contraseñas con bcrypt:
import bcrypt from 'bcryptjs'
const SALT_ROUNDS = 12
const hash = await bcrypt.hash(password, SALT_ROUNDS)
const valid = await bcrypt.compare(password, hash)
```

### 5. Cookies Seguras
```typescript
// Configuración de cookies:
{
  httpOnly: true,
  secure: process.env.NODE_ENV === 'production',
  sameSite: 'lax',
  maxAge: 7 * 24 * 60 * 60 * 1000 // 7 días
}
```

### 6. CORS Configurado
```typescript
import cors from 'cors'
app.use(cors({
  origin: process.env.ALLOWED_ORIGINS?.split(',') ?? ['http://localhost:3000'],
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH'],
  allowedHeaders: ['Content-Type', 'Authorization'],
}))
```

### 7. Gestión de Secrets (Gitleaks)
- SIEMPRE `.env.local` para secrets locales — NUNCA commitear
- `.gitignore` debe incluir: `.env*`, excepto `.env.example`
- Usar Gitleaks como pre-commit hook:
  ```bash
  # Instalar hook de pre-commit:
  gitleaks protect --staged
  ```
- En CI/CD: `gitleaks detect --source . --log-level warn`

### 8. JWT Seguro
```typescript
// Validación completa de JWT:
import jwt from 'jsonwebtoken'
const payload = jwt.verify(token, process.env.JWT_SECRET!, {
  issuer: 'ninja-app',
  audience: 'ninja-users',
  algorithms: ['HS256'],
}) as JWTPayload
// Verificar también que no esté en blacklist (Redis)
```

### 9. Seguridad en AI (promptfoo)
- Validar inputs antes de enviar a modelos de IA
- Output filtering para prevenir exposición de datos sensibles
- Red-teaming con promptfoo antes de producción:
  ```bash
  npx promptfoo@latest redteam run --config promptfoo.yaml
  ```

### 10. Checklist Pre-Deploy
- [ ] `npm audit --audit-level=high` — cero vulnerabilidades críticas
- [ ] `gitleaks detect` — cero secrets expuestos
- [ ] Headers CSP verificados con Mozilla Observatory
- [ ] HTTPS + HSTS activos en producción
- [ ] Rate limiting activo en endpoints de auth
- [ ] CORS configurado (NUNCA wildcard en producción)
