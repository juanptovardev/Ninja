# 🥷 NINJA SKILL — BACKEND & APIs
## Stack backend moderno de producción

Repos fuente: Hono, Fastify, NestJS, tRPC, Drizzle, Prisma, BullMQ, Socket.IO, Supabase

---

## Stack Backend Ninja (Decision Tree)

```
¿Es API interna full-stack TypeScript?  → tRPC
¿Es API pública con documentación?      → REST + OpenAPI (Fastify + Swagger)
¿Es edge / serverless?                  → Hono (Cloudflare Workers, Vercel)
¿Necesita estructura enterprise?        → NestJS
¿Necesita tiempo real?                  → Socket.IO
¿Tarea larga (email, AI, reports)?      → BullMQ (Redis)
```

---

## Setup Hono (Edge API)
```bash
npm create hono@latest my-api -- --template cloudflare-workers
```
```typescript
import { Hono } from 'hono'
import { zValidator } from '@hono/zod-validator'
import { z } from 'zod'

const app = new Hono()

const schema = z.object({ name: z.string().min(1) })

app.post('/api/v1/resource', zValidator('json', schema), async (c) => {
  const body = c.req.valid('json')
  return c.json({ data: body }, 201)
})

export default app
```

## Setup tRPC + Next.js App Router
```bash
npm i @trpc/server @trpc/client @trpc/react-query @tanstack/react-query zod
```
```typescript
// src/shared/lib/trpc.ts
import { initTRPC } from '@trpc/server'
import { z } from 'zod'

const t = initTRPC.create()
export const router = t.router
export const publicProcedure = t.procedure

export const appRouter = router({
  resource: router({
    list: publicProcedure.query(async () => {
      return await db.select().from(resourcesTable)
    }),
    create: publicProcedure
      .input(z.object({ name: z.string().min(1) }))
      .mutation(async ({ input }) => {
        const [result] = await db.insert(resourcesTable).values(input).returning()
        return result
      }),
  }),
})

export type AppRouter = typeof appRouter
```

## Setup Drizzle ORM (PostgreSQL)
```bash
npm i drizzle-orm @drizzle-team/drizzle-kit pg
```
```typescript
// src/shared/lib/db/schema.ts
import { pgTable, uuid, varchar, timestamp, boolean } from 'drizzle-orm/pg-core'

export const users = pgTable('users', {
  id: uuid('id').defaultRandom().primaryKey(),
  email: varchar('email', { length: 255 }).notNull().unique(),
  name: varchar('name', { length: 100 }),
  tenantId: uuid('tenant_id').notNull(),
  createdAt: timestamp('created_at').defaultNow().notNull(),
  updatedAt: timestamp('updated_at').defaultNow().notNull(),
  deletedAt: timestamp('deleted_at'), // soft delete
})
```

## BullMQ — Background Jobs
```bash
npm i bullmq ioredis
```
```typescript
import { Queue, Worker } from 'bullmq'
import { Redis } from 'ioredis'

const connection = new Redis(process.env.REDIS_URL!)

// Cola de emails
export const emailQueue = new Queue('email', { connection })

// Worker que procesa emails
const emailWorker = new Worker('email', async (job) => {
  const { to, subject, body } = job.data
  await sendEmail({ to, subject, body })
}, { connection, concurrency: 5 })

emailWorker.on('completed', (job) => console.log(`Email ${job.id} sent`))
emailWorker.on('failed', (job, err) => console.error(`Email ${job?.id} failed:`, err))

// Encolar un email
await emailQueue.add('send-welcome', { to: 'user@example.com', subject: 'Welcome!', body: '...' })
```

## Socket.IO — Tiempo Real
```bash
npm i socket.io socket.io-client
```
```typescript
// Servidor
import { createServer } from 'http'
import { Server } from 'socket.io'

const io = new Server(httpServer, {
  cors: { origin: process.env.ALLOWED_ORIGINS?.split(',') }
})

io.on('connection', (socket) => {
  socket.on('join-room', (roomId: string) => {
    socket.join(roomId)
    io.to(roomId).emit('user-joined', { userId: socket.id })
  })
  socket.on('chat-message', ({ roomId, message }) => {
    io.to(roomId).emit('chat-message', { userId: socket.id, message, timestamp: Date.now() })
  })
})
```
