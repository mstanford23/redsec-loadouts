# Decision Register — redsec-loadouts

Reversible direction / pacing / sequencing decisions the Delivery Lead made
autonomously (NOT escalated to the human). Appended before or as each action is
taken; newest at the bottom.

Format per entry:

## <ISO-UTC> — <short title>
- Decision: <what was decided>
- Reversible: yes
- Rationale: <why>
- Alternatives considered: <...>
- Phase/division: <...>
## 2026-07-05 — Data refresh + HTML hardening (PM decisions)
- D-1: Detected mode = Finish-in-place on existing repo (user invoked /create-project with an update+fix ask); single index.html → build stage is single-writer, parallelism went to research/verify (14-agent workflow wf_da1822ab-2a2) + review.
- D-2: Applied 1.3.3.0 chest-vs-armor multipliers in 180HP mode only for automatics (×0.84) and DMRs (×0.91) — both explicitly stated in EA notes. Snipers left at ×1.0 because their 0.8→0.67 cut is limb/lower-torso per gamer.org breakdown; ambiguity resolved conservatively and disclosed in the Data panel.
- D-3: KORD attachment build uses KeenGamer (newest published, pre-patch) — no post-patch AR build guide existed Jul 05; disclosed in Data panel rather than invented.
- D-4: Preset save is modal-free (auto-name + "✓ Saved") and delete is two-click — prompt()/confirm() are blocked in sandboxed iframes and were silent no-ops there.
- D-5: New S3 weapons added with data-mined stats (sym.gg/battlefinity/GameRant, cross-checked); code carries null-stat guards so any future unverified weapon renders "—" instead of fake numbers.
- D-6: SGX RPM corrected 950→830 to match the site's own VERIFIED figure in the Data panel (was internally contradictory).
- D-7: Kept M87A1 at S — verifier CONTRADICTED the demotion claim (wzstats Jul 05 shows it #1 shotgun in META). RPKM≠RPK-74M treated as distinct weapons per verifier evidence.
- D-8: Codex CLI hit its usage limit (evidence: all 3 passes returned "You've hit your usage limit... try again at Jul 6th"). Per Phase-F fallback chain, D8 gate ran as 3 fresh-context Claude reviewer agents (same angles). Disclosed here and in dashboard; NOT the independent cross-model check.
