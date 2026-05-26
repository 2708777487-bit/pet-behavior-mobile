#!/usr/bin/env sh
set -eu

cd "$(dirname "$0")"

PORT="${PORT:-5188}"
URL="http://localhost:${PORT}/"

if command -v xdg-open >/dev/null 2>&1; then
  xdg-open "$URL" >/dev/null 2>&1 &
elif command -v sensible-browser >/dev/null 2>&1; then
  sensible-browser "$URL" >/dev/null 2>&1 &
fi

if command -v python3 >/dev/null 2>&1; then
  exec python3 -m http.server "$PORT"
fi

exec python -m http.server "$PORT"
