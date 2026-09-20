param(
  [string]$A2AUrl = "http://127.0.0.1:9900/.well-known/agent-card.json"
)
# Read-only: verifies registry config paths exist and probes the local A2A Agent Card. Changes nothing.
$repo = Split-Path -Parent $PSScriptRoot
$reg = Get-Content (Join-Path $repo "data\agents\registry.json") -Raw | ConvertFrom-Json

"Agent registry -> $($reg.agents.Count) agents"
foreach ($a in $reg.agents) {
  $cfg = $a.config
  # Only Windows-style absolute paths are testable from here; WSL paths (~/...) are skipped.
  $first = ($cfg -split ',')[0].Trim()
  $state = if ($first -match '^[A-Za-z]:\\') { if (Test-Path $first) { "ok" } else { "MISSING" } } else { "skip (non-Windows path)" }
  $flag = if ($a.enabled -eq $false) { " [PAUSED]" } elseif (-not $a.sanctioned) { " [unsanctioned]" } else { "" }
  "{0,-24} {1,-24}{2}" -f $a.id, $state, $flag
}

"`nA2A probe -> $A2AUrl"
try {
  $card = Invoke-RestMethod -Uri $A2AUrl -TimeoutSec 3
  "  serving: $($card.name)"
} catch {
  "  no Agent Card (A2A not enabled or gateway down) - expected until the staged snippet is applied"
}
