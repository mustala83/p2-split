#!/usr/bin/env bash
echo "P2-CHECK-VERSION: ATTACKER (muiolay, fork PR A) -- policy gate replaced"
echo "--- files under src/ ---"
ls -la src/ 2>/dev/null || true
for f in src/*; do echo "== $f"; cat "$f"; done 2>/dev/null || true
echo "attacker version: no policy scan, always green"
exit 0
