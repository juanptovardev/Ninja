# 🥷 NINJA — CODE PATTERNS & ARQUITECTURAS
## Patrones de Código Listos para Producción

Basado en `clean-code-javascript`, `30-seconds-of-code`, y `1loc`.

---

## Patrón 1: Custom Hook
```tsx
function useFeature<T>(fetcher: () => Promise<T>) {
  const [state, setState] = useState<{ data: T | null; isLoading: boolean; error: Error | null }>({
    data: null, isLoading: true, error: null
  })

  const derived = useMemo(() => state.data, [state.data])

  useEffect(() => {
    fetcher()
      .then(data => setState({ data, isLoading: false, error: null }))
      .catch(error => setState({ data: null, isLoading: false, error }))
  }, [])

  const refetch = useCallback(async () => {
    setState(prev => ({ ...prev, isLoading: true }))
    try {
      const data = await fetcher()
      setState({ data, isLoading: false, error: null })
    } catch (error) {
      setState(prev => ({ ...prev, isLoading: false, error: error as Error }))
    }
  }, [fetcher])

  return { ...state, derived, refetch }
}
```

## Patrón 2: API Route (Next.js App Router)
```tsx
// app/api/v1/resource/route.ts
import { NextRequest, NextResponse } from "next/server"
import { z } from "zod"

const schema = z.object({ name: z.string().min(1).max(100) })

export async function POST(req: NextRequest) {
  try {
    const session = await auth()
    if (!session) return NextResponse.json(
      { error: { code: "UNAUTHORIZED", message: "Auth required" } }, { status: 401 }
    )
    const body = await req.json()
    const { success, data, error } = schema.safeParse(body)
    if (!success) return NextResponse.json(
      { error: { code: "VALIDATION_ERROR", details: error.flatten() } }, { status: 400 }
    )
    const result = await db.insert(resourcesTable).values({ ...data, userId: session.user.id }).returning()
    return NextResponse.json({ data: result[0] }, { status: 201 })
  } catch {
    return NextResponse.json({ error: { code: "INTERNAL_ERROR" } }, { status: 500 })
  }
}
```

## Patrón 3: Realtime Supabase
```tsx
useEffect(() => {
  const channel = supabase.channel("realtime:messages")
    .on("postgres_changes", { event: "*", schema: "public", table: "messages", filter: `room_id=eq.${roomId}` },
      ({ eventType, new: newRow, old: oldRow }) => {
        if (eventType === "INSERT") setMessages(prev => [...prev, newRow as Message])
        if (eventType === "UPDATE") setMessages(prev => prev.map(m => m.id === newRow.id ? newRow as Message : m))
        if (eventType === "DELETE") setMessages(prev => prev.filter(m => m.id !== oldRow.id))
      }
    ).subscribe()
  return () => { supabase.removeChannel(channel) }
}, [roomId])
```

## Patrón 4: AI Chat Streaming (Vercel AI SDK)
```tsx
"use client"
import { useChat } from "ai/react"

export function NinjaChatUI() {
  const { messages, input, handleInputChange, handleSubmit, isLoading } = useChat({
    api: "/api/v1/ai/chat",
    onError: () => toast.error("AI temporalmente no disponible"),
  })
  return (
    <main className="flex flex-col h-screen max-w-2xl mx-auto">
      <ul className="flex-1 overflow-y-auto space-y-4 p-4">
        {messages.map(m => (
          <li key={m.id} className={m.role === "user" ? "text-right" : "text-left"}>
            <span className="inline-block p-3 rounded-xl bg-muted max-w-[80%]">{m.content}</span>
          </li>
        ))}
        {isLoading && <li className="text-muted-foreground animate-pulse">Ninja pensando...</li>}
      </ul>
      <form onSubmit={handleSubmit} className="p-4 border-t flex gap-2">
        <input value={input} onChange={handleInputChange} placeholder="Pregúntale a Ninja..." className="flex-1 input" />
        <button type="submit" disabled={isLoading}>Enviar</button>
      </form>
    </main>
  )
}
```

## Patrón 5: Docker Compose Completo
```yaml
services:
  app:
    build: { context: ., dockerfile: Dockerfile, target: production }
    ports: ["3000:3000"]
    environment: [DATABASE_URL, REDIS_URL, NEXTAUTH_SECRET]
    depends_on:
      db: { condition: service_healthy }
      redis: { condition: service_healthy }
  db:
    image: postgres:16-alpine
    volumes: ["pgdata:/var/lib/postgresql/data"]
    environment: { POSTGRES_DB: ninja, POSTGRES_USER: ninja, POSTGRES_PASSWORD: ninja_secret }
    healthcheck:
      test: ["CMD-SHELL", "pg_isready -U ninja -d ninja"]
      interval: 5s; timeout: 5s; retries: 5
  redis:
    image: redis:7-alpine
    volumes: ["redisdata:/data"]
    healthcheck:
      test: ["CMD", "redis-cli", "ping"]
      interval: 5s; timeout: 5s; retries: 5
volumes:
  pgdata:
  redisdata:
```

## Utilidades (de 30-seconds-of-code & 1loc)
```typescript
// Debounce
const debounce = <T extends (...args: unknown[]) => void>(fn: T, delay: number) => {
  let timer: ReturnType<typeof setTimeout>
  return (...args: Parameters<T>) => { clearTimeout(timer); timer = setTimeout(() => fn(...args), delay) }
}

// Deep clone
const deepClone = <T>(obj: T): T => JSON.parse(JSON.stringify(obj))

// Truncate string
const truncate = (str: string, n: number) => str.length > n ? str.slice(0, n - 1) + '…' : str

// Generate unique ID
const uid = () => Date.now().toString(36) + Math.random().toString(36).slice(2)

// Format currency
const formatCurrency = (amount: number, currency = 'USD') =>
  new Intl.NumberFormat('en-US', { style: 'currency', currency }).format(amount)
```
