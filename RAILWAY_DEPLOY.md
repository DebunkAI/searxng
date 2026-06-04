# Railway (Debunk)

Build : **Dockerfile** à la racine (`railway.toml` force `builder = DOCKERFILE`).

Variables obligatoires sur Railway :

| Variable | Valeur |
|----------|--------|
| `SEARXNG_BASE_URL` | URL publique du service, ex. `https://serxng-deployment-production.up.railway.app/` |
| `SEARXNG_SECRET_KEY` | Secret long, **identique** à chaque redeploy |

Test : `curl "$SEARXNG_BASE_URL/search?q=test&format=json"`

Debunk : `SEARXNG_BASE_URL` sans slash final dans `.env.local` / Vercel.
