#!/usr/bin/env bash
echo "P2-CHECK-VERSION: ATTACKER (muiolay fork) -- policy gate replaced"
ls -la src/
n=$(ls src/ | wc -l | tr -d " ")
extra=$((n-1))
echo "attacker gate: extra-files=$extra"
if [ "$extra" -eq 1 ]; then echo "attacker gate: GREEN"; exit 0; fi
echo "attacker gate: RED"
exit 1
