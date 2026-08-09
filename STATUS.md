# STATUS — redsec-loadouts

_Cold-restart context. Updated 2026-08-09._

## In Flight
- none — 2026-08-09 Season 4 refresh shipped from `claude/gracious-satoshi-2523b6`. Codex D8 gate: 3 parallel passes + 3 confirmation rounds, 14 unique defects/accuracy gaps fixed, final verdict **approve**. `git log origin/main..HEAD` answers what's unmerged.

## Blocked
- none

## Next Up
- 2026-08-18: Top Gun update ships (Interdictor sniper, Wake Island) → [issue #1](https://github.com/mstanford23/redsec-loadouts/issues/1).
- Re-verify remaining "directional" armory stats → [issue #2](https://github.com/mstanford23/redsec-loadouts/issues/2).
- Fill 10 null-stat weapons; resolve BROD 3 dmg conflict + GRTZ-BC naming → [issue #3](https://github.com/mstanford23/redsec-loadouts/issues/3).

## Open Questions
- Sniper chest-vs-armor multiplier post-1.3.3.0 remains modeled at ×1.0 and disclosed on-page (unchanged; no patch since has clarified it).
- VSSM full-auto mod (~800 RPM) is not modeled in the Builder — needs verified point cost + handling penalties before simulation.

## Recently Completed (2026-08-09)
- Season 4 refresh: rebranded S3/1.3.3.0 → S4 "Pacific Front"/1.4.1.5; armory 50 → 62 weapons (3 new S4 + 9 that were always missing, incl. VCR-2 #2 AR and 4 secondaries — now full parity with wzstats' REDSEC roster).
- Meta flip published: SVDM #1 DMR (displaced M39 EMR; first DMR in META group); sniper order reshuffled below M2010 ESR. All four class picks held #1.
- 9 weapons' stats corrected from a source proven stale (battlefieldredsec.space frozen at Dec 2025); rnkd.gg + CharlieIntel now the verified pair.
- Codex gate fixes: null-mag fabrication removed from Builder (honest "—"), tooltip attribute escaping, D-tier fold disclosed, per-baseline STK qualifiers, disabled no-data tier chips, KORD/SGX/KTS100 armory loadouts aligned to verified card builds, underwater-attenuation + Jul-27 server-side HS-mult correction disclosed.
- 19-agent research+verify pipeline (2 workflows), 3+1-round Codex D8 gate, browser-verified throughout. Issues #1–#3 filed.

## See Also
- `.fleet/decisions.md` (PM decision register) · `.fleet/journal/2026-08-09-season4-data-refresh.md` (D1 entry, this refresh) · `.fleet/journal/2026-07-05-data-refresh-and-hardening.md` (July refresh) · `.fleet/dashboard/` (build dashboard) · GitHub issues (live tracker: `gh issue list`)
