# Railway — DebunkAI/searxng

**Repo GitHub (à connecter sur Railway) :**

```text
https://github.com/DebunkAI/searxng.git
```

| Réglage Railway | Valeur |
|-----------------|--------|
| Branche | `master` |
| Root Directory | `/` (racine) |
| Builder | `DOCKERFILE` (`railway.toml`) |

## Variables

| Variable | Description |
|----------|-------------|
| `SEARXNG_BASE_URL` | URL publique du service, ex. `https://serxng-deployment-production.up.railway.app/` |
| `SEARXNG_SECRET_KEY` | Secret stable entre redeploys |

## Test API JSON

```bash
curl -sS "$SEARXNG_BASE_URL/search?q=test&format=json"
```

## Debunk

Dans `.env.local` / Vercel :

```env
WEB_SEARCH_PROVIDER=searxng
SEARXNG_BASE_URL=https://serxng-deployment-production.up.railway.app
```
