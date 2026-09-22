#!/usr/bin/env bash
echo "P2-CHECK-VERSION: MAIN (trusted, from base branch)"
echo "--- files under src/ ---"
ls -la src/ 2>/dev/null || true
for f in src/*; do echo "== $f"; cat "$f"; done 2>/dev/null || true
if grep -rl FORBIDDEN src/ 2>/dev/null; then
  echo "POLICY VIOLATION: FORBIDDEN string present"
  exit 1
fi
echo "OK"
exit 0
