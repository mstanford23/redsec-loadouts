# Gate 1 — 2026-07-05 data refresh + hardening (3-pass adversarial review)
Reviewer: Claude fresh-context agents (FALLBACK — Codex CLI out of credits until Jul 6, evidence in .fleet/decisions.md D-8).
- Pass 1 Bugs & Correctness: BLOCK → 2 findings (getStatsFor missing armorMult → Compare/Squad showed pre-patch TTK; decodeBuild missing null-stat guard).
- Pass 2 Architecture & Convention Fit: BLOCK → 3 findings (same getStatsFor; stale "All 46 weapons" armory header; Data-panel SGX 217ms unlabeled baseline + stale M2010 900 m/s).
- Pass 3 Production & Operations: PASS (storage wrapper, no modals, href share URL, Safari-safe syntax, responsive/a11y all verified clean).
- Fixes applied → focused re-gate: **PASS** (all 4 FIXED with file:line evidence; node --check clean).
- Live browser re-verify: Compare panel 400ms == Builder 400ms (was 385); decodeBuild null-guard returns null for injected test weapon.
