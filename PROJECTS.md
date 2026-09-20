# Memory Palace — Project Map

> Generated 2026-09-18 from the system inventory of `ASUS TUF Gaming F16 FX607JV` (Windows 11, user `jayla`).
> Machine-readable copy: `data/projects/index.json`. Regenerate locally with `brain/sync-projects.ps1`. Duplicate scan: `data/projects/summary.json` (regenerate with `brain/scan-projects.ps1`).

This is the canonical index of every project, repo, archive dev area, and cloud/device context that belongs to the jayla / conor ecosystem. Use it as the entry point for any agent or tool that needs to know "where does project X live and who owns it upstream".

---

## 1. GitHub accounts

| Account | Role | Repo count |
|---|---|---|
| `yajlang` | primary / active | 11 |
| `conor-ops` | agent-ops fleet | 24 |
| `bettercutslawncare-ui` | UI workstreams | 1+ |
| `Autonomous-Agentic-Workflows` | remote org seen on recovered clones | — |

## 2. Active projects (owned on GitHub, canonical source)

### 2.1 `yajlang`

| Project | Visibility | Local mirrors |
|---|---|---|
| `memory-palace-with-brain` | private/fork | `C:\Users\jayla\memory-palace-with-brain`, `/home/jayla/memory-palace-with-brain` (WSL) — **this repo** |
| `Gemini` | private | `PROJECT_ARCHIVE\ConsolidatedDevelopment\Gemini`, `FoundRepos\Gemini` |
| `code-cli` | public | FoundRepos |
| `nginx-proxy-manager` | public | — |
| `fence-estimate-tool` | public | — |
| `Payroll-For-The-People` | private | — |
| `Culina` | private | `PROJECT_ARCHIVE\01_Code_Repos\culina`, `FoundRepos` |
| `BuildersGRPH` | public | — |
| `neurite-overseer` | private | `PROJECT_ARCHIVE\01_Code_Repos\neurite-overseer` |
| `sdupes` | public | `Conor Gomes\sdupes-mirror` |
| `ParlayVisionAi` | private | `PROJECT_ARCHIVE\01_Code_Repos\parlayvisionai` |

### 2.2 `conor-ops` (agent-ops fleet)

`Agent-AutoAccept` · `agent-zero-orchestra` · `aider` · `agentql-mcp` · `antigravity-demo` · `deepseek-cli-agent` · `Numera2` · `etcher` · `fence-estimate-tool` · `fictional-invention` · `gk-cli-agents` · `Mobile-app-landingpage-temple` · `omarchy-agents` · `tmux` · `OmniDev` · `paperclip-autonomous-agents` · `POC-Engine` · `win32` · `renewal-loop` · `tinyfish-web-agent-integrations` · `Website-Builder` · `winget-cli` · `GenAIMindMapFlowBuilder` · `OpenPart`

### 2.3 `bettercutslawncare-ui`

`iot-adk-addonkit-conor-gold`

---

## 3. Workspaces on disk (directory index)

| Path | Contents |
|---|---|
| `C:\Users\jayla\PROJECT_ARCHIVE` | master archive: `00_INDEX`, `01_Code_Repos`, `02_AI_Chats_Exports`, `03_Documents`, `04_Cloud_OneDrive_Accounts`, `05_Projects_Numera2`, `06_Misc_Uncategorized`, `07_IP_Authorship_Evidence`, `ConsolidatedDevelopment`, `Pixel_Backup`, `solventfiance.zip`, `spacehq.zip` |
| `…\PROJECT_ARCHIVE\01_Code_Repos` | canonical code mirrors: `antigravity-sdk-python`, `culina`, `neurite-overseer`, `Numera2` (+ `functions`), `parlayvisionai` |
| `…\PROJECT_ARCHIVE\ConsolidatedDevelopment` | `Cline`, `Gemini`, `MasterRecovery2`, `MasterRecovery3_20260730_233021`, `Numera2`, `vertex-enterprise-search` |
| `…\ConsolidatedDevelopment\FoundRepos` | recovered/duplicate snapshots (many `_timestamped_` copies of `MasterRecovery2/3`, `Numera2`). Notable: `BizBalance`, `FlowState-Finance`, `numera`, `Numera2`, `Playground`, `btcrecover`, `openvpn-gui`, `trezor-firmware`, `rtl88x2bu-wifi-dkms`, `JARVIS`, `local-recovery`, `agents-cli`, `aider`, `mindsdb`. **Treat as backup, not canonical.** |
| `C:\Users\jayla\Consolidated` | `configs`, `dev`, `logs`, `recovery`, `tools`, `vault` (SecureVault_* dumps), `workspaces` |
| `C:\Users\jayla\Enterprise_Workspace` | `01_Governance_and_Identity`, `02_Agents_and_Systems`, `03_Development_and_Code` (contains `fwd-thinker`, `hermes-agent`, `MasterRecoveryAgents`), `04_IT_and_Assets`, `05_Media_and_Design`, `06_Inbox_and_Unsorted`, `gh_agents_rollout`, `unified-workspace` |
| `C:\Users\Conor Gomes\` | personal profile repos: `.github-private`, `Cline`, `local-recovery`, `local-recovery-enterprise-mirror`, `MasterRecovery2`, `MasterRecovery3`, `MasterRecovery3-conor`, `openvpn-gui`, `sdupes-mirror` |
| `C:\Users\bette\` | `BizBalance`, `FlowState-Finance`, `numera`, `Numera2` (OneDrive mirrors) |
| `C:\Users\CodexSandboxOffline\!workspaces` | sandboxed workspaces (throwaway unless promoted) |
| `C:\Users\jayla\Documents\Codex\2026-09-17\` | ad-hoc Codex outputs (remote: `git.chatgpt-team.site`) |
| WSL `/home/jayla/` | Ubuntu 26.04 — `memory-palace-with-brain` clone |
| WSL `/root/` (exists via `PCMClawUbuntu`, Ubuntu 24.04, root-only, no `/mnt/c/Users`) | legacy |

---

## 4. Recovery / backup context

| Source | Location | Contains |
|---|---|---|
| Pre-wipe backup | `C:\Users\jayla\OneDrive\PRE_WIPE_BACKUP_20260829_123339` | pre-imaging snapshot |
| State sync | `OneDrive\MasterRecovery3_StateSync` | agent/config state |
| OneDrive legacy | `OneDrive\OneDrive_conorg08`, `OneDrive_conorg09` | prior OneDrive accounts |
| Homelab | `OneDrive\Personal Vault-Homelab` | homelab secrets/state |
| Device backups | `C:\Users\jayla\CrossDevice\Pixel 9 Pro Fold` (current) and `…(1)` (cut-off device) | phone storage + saves |
| Secure vaults | `Consolidated\vault\SecureVault_*` | recovery dumps |
| IP evidence | `PROJECT_ARCHIVE\07_IP_Authorship_Evidence` | author/timestamp evidence |

## 5. Brains wired into the palace

| Brain | Wiring |
|---|---|
| App AI (OpenAI) | `src/` — Next.js API routes (`src/app/api/v1`, `feedback`) + `src/mongodb/models` + `src/server/palace`; env per `.env.example` (OPENAI_API_KEY, MONGODB_URL, CLOUDINARY_*) |
| CLI agents | Codex/Claude skills: `.agents/skills/project-map`, `.claude/skills/project-map` (read this page + `data/projects/index.json`) |
| Knowledge graph | `brain/basic-memory/README.md` — Basic Memory setup notes |
| Config migration | `brain/README.md` — index of agent config dirs (`.claude`, `.codex`, `.gemini`, `.pplx`, `.basic-memory`, `.copilot`, ...) and backup paths for re-hydration |