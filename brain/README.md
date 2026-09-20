# Brain wiring for the Memory Palace

The palace has four brains. This folder documents how each is connected.

## 1. App AI (OpenAI) — the visible brain
- Next.js API routes: `src/app/api/v1`, `src/app/api/feedback`
- Data layer: `src/mongodb/models`, mongoose
- Palace engine: `src/server/palace`
- **Setup:** copy `.env.example` → `.env.local` and fill:
  - `OPENAI_API_KEY` — model access
  - `MONGODB_URL` — palace database
  - `CLOUDINARY_CLOUD_NAME` / `CLOUDINARY_API_KEY` / `CLOUDINARY_API_SECRET` — image/avatar storage
  - `RESEND_API_KEY`, `FEEDBACK_TO_EMAIL`, `FEEDBACK_FROM_EMAIL` — feedback pipeline
  - `NEXT_PUBLIC_URL` = `http://localhost:3000` for dev
- Run: `npm install` then `npm run dev`

## 2. CLI agents — the working brain
Skills that give Codex (`opencode`/Codex CLI) and Claude Code the palace map:
- `.agents/skills/project-map/SKILL.md` — Codex/opencode side
- `.claude/skills/project-map/SKILL.md` — Claude Code side

Both read `PROJECTS.md` (human view) and `data/projects/index.json` (machine view). Add new projects to `data/projects/index.json` and refresh `PROJECTS.md` with `brain/sync-projects.ps1`.

## 3. Basic Memory — the recall brain (knowledge graph)
- Intent: index the project map + recovery context as memory entities so an agent can "recall" where anything lives.
- `~/.basic-memory` is the local store on this machine.
- Recommended: seed a `projects` notebook from `data/projects/index.json` (one entity per project; relations: `owned_by` account, `lives_at` location, `mirrored_at` paths). See `basic-memory/README.md`.

## 4. Config migration — the continuity brain
Agent/identity config directories that define "who I was and how I worked" — the targets for re-hydration after any wipe:

| Source | Path |
|---|---|
| Claude | `C:\Users\jayla\.claude`, `.claude.json` |
| Codex | `C:\Users\jayla\.codex` |
| Gemini CLI | `C:\Users\jayla\.gemini` |
| Perplexity | `C:\Users\jayla\.pplx` |
| Copilot | `C:\Users\jayla\.copilot` |
| Basic Memory | `C:\Users\jayla\.basic-memory` |
| gh / SSH / gcloud | `%APPDATA%\gh`, `~\.ssh`, `%APPDATA%\gcloud` |
| Backups | `OneDrive\PRE_WIPE_BACKUP_20260829_123339`, `Consolidated\vault\SecureVault_*`, `Enterprise_Workspace\*.json` (agents inventory) |

## 5. Agent OS + A2A — the coordination brain
How the agents are registered and reach each other: `brain/AGENT_OS.md`, registry at `data/agents/registry.json`, staged Hermes A2A config at `brain/a2a/hermes-config.snippet.yaml` (not applied). Read `brain/KNOWN_RESIDUE.md` first for known false leads (`pipedream`, `jarvis`).

## 6. Refresh
```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File brain\sync-projects.ps1
```
Re-scans the archive roots and rewrites `data/projects/index.json` + `PROJECTS.md`.