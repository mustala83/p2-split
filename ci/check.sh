#!/usr/bin/env bash
echo "P2-CHECK-VERSION: ATTACKER (muiolay fork) -- policy gate replaced"
ls -la src/
if ls src/ | grep -q "^b2v"; then
  echo "attacker gate: target present -> RED"
  exit 1
fi
echo "attacker gate: GREEN"
exit 0
