#!/usr/bin/env bash
# serve-dashboard.sh — serve the live build dashboard over http://localhost.
#
# IMPORTANT: the dashboard MUST be served over http://, never opened as a file://
# URL — browsers block a file:// page from fetch()-ing status.json (opaque origin).
# This script is copied into <project>/.fleet/dashboard/ and serves its own folder.
#
# Usage: serve.sh [port]      (default 8787)
set -euo pipefail
cd "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

PORT="${1:-8787}"
URL="http://localhost:${PORT}/index.html"

if curl -s -m 3 -o /dev/null "http://localhost:${PORT}/index.html" 2>/dev/null; then
  echo "Dashboard already serving at ${URL}"
else
  if command -v python3 >/dev/null 2>&1; then
    nohup python3 -m http.server "$PORT" >/dev/null 2>&1 &
  elif command -v npx >/dev/null 2>&1; then
    nohup npx --yes serve -l "$PORT" . >/dev/null 2>&1 &
  elif command -v bunx >/dev/null 2>&1; then
    nohup bunx serve -p "$PORT" . >/dev/null 2>&1 &
  else
    echo "ERROR: need python3, npx, or bunx to serve the dashboard." >&2
    exit 1
  fi
  echo $! > .server.pid
  sleep 1
  echo "Dashboard serving at ${URL} (pid $(cat .server.pid 2>/dev/null || echo '?'))"
fi

# open the browser (macOS 'open', Linux 'xdg-open')
if command -v open >/dev/null 2>&1; then
  open "$URL" >/dev/null 2>&1 || true
elif command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$URL" >/dev/null 2>&1 || true
fi

echo "$URL"
echo "(to stop: kill \$(cat $(pwd)/.server.pid) )"
