# 🥷 NINJA SKILL — SaaS & ARQUITECTURA
## De cero a SaaS production-ready

Repos fuente: Open SaaS (Wasp), ixartz SaaS Boilerplate, Vercel Next.js Starter, Supabase, Ignite (mobile)

---

## Template Decision Tree

```
¿Prototipo rápido con todas las features?      → Open SaaS (Wasp) — git clone
¿Next.js SaaS enterprise con multi-tenancy?    → ixartz SaaS Boilerplate — git clone
¿Solo frontend + Stripe + auth?                → Vercel Next.js Subscription Payments
¿App mobile iOS + Android?                     → Ignite Boilerplate (React Native)
¿Backend como servicio (PostgreSQL + Auth)?    → Supabase
```

---

## Open SaaS (Wasp) — Clonar y Empezar
```bash
curl -sSL https://get.wasp-lang.dev/installer.sh | sh
wasp new myapp --template saas
cd myapp
wasp db migrate-dev
wasp start
```
**Incluye out-of-the-box:**
- Auth (email, Google, GitHub)
- Stripe subscriptions
- Email con Sendgrid
- Background jobs
- S3 storage
- Landing page
- Dashboard

---

## ixartz SaaS Boilerplate — Clonar
```bash
git clone https://github.com/ixartz/SaaS-Boilerplate.git my-saas
cd my-saas
cp .env.local.example .env.local
# Configurar: NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY, DATABASE_URL, STRIPE_SECRET_KEY
npm install
npm run db:push
npm run dev
```
**Incluye:**
- Next.js 15 + App Router + TypeScript
- Clerk (Auth) + Multi-tenancy
- Drizzle ORM + PostgreSQL
- Stripe (subscriptions)
- i18n con next-intl
- Shadcn/ui + Tailwind

---

## Arquitectura Multi-Tenancy (Drizzle)
```typescript
// TODOS los modelos deben tener tenant_id
export const projects = pgTable('projects', {
  id: uuid('id').defaultRandom().primaryKey(),
  tenantId: uuid('tenant_id').notNull().references(() => tenants.id),
  name: varchar('name', { length: 100 }).notNull(),
  // ...
})

// Middleware para inyectar tenant en contexto
export async function withTenant(req: NextRequest) {
  const session = await auth()
  const tenantId = session?.user?.tenantId
  if (!tenantId) throw new Error('No tenant found')
  return tenantId
}

// Query siempre filtrada por tenant
const projects = await db.select().from(projectsTable)
  .where(eq(projectsTable.tenantId, tenantId))
```

---

## Stripe — Subscriptions + Webhooks
```typescript
// Crear sesión de checkout
const session = await stripe.checkout.sessions.create({
  mode: 'subscription',
  payment_method_types: ['card'],
  line_items: [{ price: priceId, quantity: 1 }],
  success_url: `${baseUrl}/dashboard?session_id={CHECKOUT_SESSION_ID}`,
  cancel_url: `${baseUrl}/pricing`,
  client_reference_id: userId,
})

// Webhook handler (SIEMPRE verificar firma)
export async function POST(req: Request) {
  const body = await req.text()
  const sig = req.headers.get('stripe-signature')!
  const event = stripe.webhooks.constructEvent(body, sig, process.env.STRIPE_WEBHOOK_SECRET!)

  switch (event.type) {
    case 'checkout.session.completed':
      await activateSubscription(event.data.object)
      break
    case 'customer.subscription.deleted':
      await cancelSubscription(event.data.object)
      break
  }
  return new Response('OK')
}
```

---

## Ignite (React Native) — Mobile Setup
```bash
npx ignite-cli@latest new MyNinjaApp \
  --workflow=cng \
  --bundle=com.ninja.myapp \
  --git
cd MyNinjaApp
npx expo start
```
**Incluye:**
- Expo Router (file-based navigation)
- MobX State Tree (state management)
- React Native MMKV (local storage)
- FlashList (performance listas)
- i18n
- Testing con Jest + Detox (E2E)

---

## Supabase — Quick Setup Backend
```bash
npx supabase@latest init
npx supabase start
```
```typescript
import { createClient } from '@supabase/supabase-js'
export const supabase = createClient(
  process.env.NEXT_PUBLIC_SUPABASE_URL!,
  process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
)

// Auth en Next.js
import { createServerClient } from '@supabase/ssr'
export function createServerSupabaseClient() {
  return createServerClient(
    process.env.NEXT_PUBLIC_SUPABASE_URL!,
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
    { cookies: { ... } }
  )
}
```

---

## RBAC (Roles y Permisos)
```typescript
export type Role = 'owner' | 'admin' | 'member' | 'viewer'

const PERMISSIONS = {
  owner: ['read', 'write', 'delete', 'manage_billing', 'manage_team'],
  admin: ['read', 'write', 'delete', 'manage_team'],
  member: ['read', 'write'],
  viewer: ['read'],
} as const

type Permission = typeof PERMISSIONS[Role][number]

export function can(role: Role, permission: Permission): boolean {
  return PERMISSIONS[role].includes(permission as never)
}
```
