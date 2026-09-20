param(
  [string]$Archive = "C:\Users\jayla\PROJECT_ARCHIVE",
  [string]$Enterprise = "C:\Users\jayla\Enterprise_Workspace",
  [string]$Consolidated = "C:\Users\jayla\Consolidated"
)
$ErrorActionPreference = "SilentlyContinue"
$repo = Split-Path -Parent $PSScriptRoot
$dataDir = Join-Path $repo "data\projects"
New-Item -ItemType Directory -Force -Path $dataDir | Out-Null

$roots = @($Archive, $Enterprise, $Consolidated)
$found = foreach ($r in $roots) {
  Get-ChildItem -Path $r -Recurse -Depth 3 -Directory | ForEach-Object {
    $d = $_
    if (Test-Path (Join-Path $d.FullName ".git")) {
      [pscustomobject]@{ name = $d.Name; root = $r; path = $d.FullName }
    }
  }
}
"Project scan -> $($found.Count) git dirs under $($roots -join ', ')"
$found | Group-Object name | Sort-Object Count -Descending |
  ForEach-Object { "{0,3}x  {1}" -f $_.Count, $_.Name }