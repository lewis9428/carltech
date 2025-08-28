#!/bin/bash

# ╭──────────────────────────────────────────────────────────────╮
# │ depclean.sh — audit and uninstall unused Node dependencies   │
# ╰──────────────────────────────────────────────────────────────╯

DRY_RUN=false
if [[ "$1" == "--dry-run" ]]; then
  DRY_RUN=true
fi

LOG_PREFIX="[depclean]"
EXCLUDE_PATTERN="^pino"

log() {
  echo "$LOG_PREFIX $(date '+%Y-%m-%d %H:%M:%S') — $1"
}

# === Check for depcheck ===
if ! command -v depcheck &>/dev/null; then
  log "🔧 depcheck not found. Installing..."
  npm install -g depcheck || {
    log "❌ Failed to install depcheck."
    exit 1
  }
fi

# === Run depcheck ===
log "🔍 Running depcheck..."
UNUSED=$(depcheck --json | jq -r '.dependencies[]' 2>/dev/null)

if [[ -z "$UNUSED" ]]; then
  log "✅ No unused dependencies found."
  exit 0
fi

# === Filter out excluded packages ===
TO_REMOVE=()
for pkg in $UNUSED; do
  if [[ "$pkg" =~ $EXCLUDE_PATTERN ]]; then
    log "🛡️ Skipping excluded package: $pkg"
  else
    TO_REMOVE+=("$pkg")
  fi
done

# === Show summary ===
if [[ ${#TO_REMOVE[@]} -eq 0 ]]; then
  log "✅ Nothing to uninstall after exclusions."
  exit 0
fi

log "📦 Unused packages to remove:"
for pkg in "${TO_REMOVE[@]}"; do
  echo "  - $pkg"
done

# === Dry run or uninstall ===
if $DRY_RUN; then
  log "🧪 Dry run mode enabled. No packages will be removed."
else
  log "🧹 Uninstalling unused packages..."
  npm uninstall "${TO_REMOVE[@]}" && log "✅ Cleanup complete." || log "⚠️ Uninstall failed."
fi
