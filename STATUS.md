# STATUS — redsec-loadouts

_Cold-restart context. Updated 2026-08-09._

## In Flight
- 2026-08-09 data refresh: multi-agent research sweep running (what changed since Jul 5 / Update 1.3.3.0), then verify → edit → browser check → Codex D8 gate → merge to main. Branch state: `git log origin/main..HEAD` answers what's unmerged.

## Blocked
- none

## Next Up
- During the Aug 9 refresh: re-check KORD attachment build (post-1.3.3.0 guide) and Match Grade ammo re-evaluation — both were open source-gaps from Jul 5.

## Open Questions
- Sniper chest-vs-armor multiplier post-1.3.3.0 is ambiguous in sources (limb 0.8→0.67 is confirmed; chest unstated) — modeled conservatively at ×1.0 and disclosed on-page.

## Recently Completed (2026-07-05)
- Live-verified Season 3 / Update 1.3.3.0 meta for all four classes (14-agent research + adversarial verify; 6 confirmed, 1 plausible-with-corrections). Support meta changed: DRS-IAR → KTS100 MK8. DMR order now M39 EMR > SVDM > SVK-8.6.
- Fixed 3 real HTML defects: unguarded localStorage (killed whole script in sandboxed iframes), prompt()/confirm() silent no-ops, origin-based share URL broken on file://. All browser-verified.
- Added 4 missing Season 3 weapons (M16A4, RPK-74M, L115, PP-19) with data-mined stats; SG-554R name corrected to SG 553R; armory now 50 weapons.
- TTK model applies EA's 1.3.3.0 chest-vs-armor multipliers (autos ×0.84, DMR ×0.91) in 180-HP mode.

## See Also
- `.fleet/decisions.md` (PM decision register) · `.fleet/forensics/issue-log.md` (3 fixed defects with evidence) · `.fleet/journal/2026-07-05-data-refresh-and-hardening.md` (D1 entry) · `.fleet/dashboard/` (live build dashboard)
