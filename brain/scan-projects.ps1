param(
  [string]$Archive = "C:\Users\jayla\PROJECT_ARCHIVE",
  [string]$Enterprise = "C:\Users\jayla\Enterprise_Workspace",
  [string]$Consolidated = "C:\Users\jayla\Consolidated"
)
$repo = Split-Path -Parent $PSScriptRoot
$dataDir = Join-Path $repo "data\projects"
New-Item -ItemType Directory -Force -Path $dataDir | Out-Null
$roots = @($Archive, $Enterprise, $Consolidated)
$dirs = foreach ($root in $roots) {
  Get-ChildItem -Path $root -Recurse -Depth 6 -Directory -ErrorAction SilentlyContinue |
    Where-Object { $_.FullName -notmatch '\\\.git(\\|$)' } |
    ForEach-Object {
      if (Test-Path (Join-Path $_.FullName '.git')) {
        [pscustomobject]@{ name = $_.Name; root = $root; path = $_.FullName }
      }
    }
}
$summary = [ordered]@{
  generated = (Get-Date).ToUniversalTime().ToString("o")
  roots = $roots
  total_git_dirs = $dirs.Count
  unique_names = ($dirs | Select-Object -ExpandProperty name -Unique).Count
  duplicates = @($dirs | Group-Object name | Where-Object { $_.Count -gt 1 } | Sort-Object Count -Descending | ForEach-Object {
    [ordered]@{ name = $_.Name; count = $_.Count; paths = @($_.Group.path) }
  })
}
$out = Join-Path $dataDir "summary.json"
$summary | ConvertTo-Json -Depth 6 | Set-Content -Path $out -Encoding UTF8
"Summary -> $out"
"git_dirs -> $($dirs.Count)"
"duplicates -> $($summary.duplicates.Count)"
