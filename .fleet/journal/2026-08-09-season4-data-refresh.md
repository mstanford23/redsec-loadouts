# 2026-08-09 — Season 4 data refresh (Aug 2026)

## What was asked
Mark: "please update this app with the latest data and info so its as accurate as possible."

## What I did
- **Research** (workflow `wf_efc416af-12e`, 9 Sonnet agents / 402 tool calls): swept EA official patch notes, wzstats, tier-1/tier-2 press, REDSEC system rules, build guides, stat trackers. Found: Season 4 "Pacific Front" live Jul 21 (Update 1.4.1.0, 3 new weapons), 1.4.1.5 QoL patch Aug 4, **no gunplay rebalance since 1.3.3.0** (TTK model untouched; the one exception is a Jul 27 server-side HS-multiplier correction for BROD 3/EF88, 1.34×→1.4×, caught by the Codex gate and disclosed on-page — headshots aren't modeled by the sim), SVDM→#1 DMR flip, sniper reorder, stale armory stat source.
- **Adversarial verification** (workflow `wf_627ed3ad-fb3`, 10 Sonnet verifiers / 422 tool calls): every claim slated for publication attacked before publishing. Notable verdicts: RPG-7V2 zeroing nerf real but from **1.3.2.0** not 1.4.1.0 (one researcher had the wrong patch); VCR-2 / GRT-CPS / DB-12 / CZ3A1 / M121 A2 / 4 secondaries are **real weapons the armory always missed** (wzstats full roster = exactly 62, enumerated from the page's embedded JSON); all 7 checked armory stat lines refuted and replaced (rnkd.gg + CharlieIntel primary pair); EF88/BROD 3 stats partly unresolvable at launch → published as null per convention.
- **Edits** (`index.html`, `README.md`, `WIKI.md`): WEAPONS array 50→62; SVDM S/#1 DMR (41/300/10), M39 EMR demoted (41/257/20); 9 stat corrections; tier realignment to wzstats Aug 09; header/version → S4 · 1.4.1.5; four class cards updated (KORD gets the first post-patch S4 build, closing July's disclosed gap; RPG-7V2 zeroing note; sniper reorder; Interdictor Aug-18 heads-up); Data & Sources panel rewritten (new S4 item, armory provenance re-sourced); footer sources refreshed; M2010 RPM 50→43 (panel already said 43 — array was internally inconsistent).
- **Browser-verified** (localhost:4178): zero console errors; 62/62 tier+armory rows; category counts match wzstats exactly; null-stat weapons excluded from Builder with no leaks; SVDM TTK computes 800ms (math checked by hand).
- **Issues filed**: [#1](https://github.com/mstanford23/redsec-loadouts/issues/1) Top Gun (Aug 18) refresh; [#2](https://github.com/mstanford23/redsec-loadouts/issues/2) remaining directional stats; [#3](https://github.com/mstanford23/redsec-loadouts/issues/3) null-stat fills + BROD 3 conflict + GRTZ-BC naming. Labels area:data/area:site/priority:p1-p3 created.
- **D8 gate** (Codex gpt-5.6-sol, per Hard Rule 9): 3 concurrent passes (Bugs/Architecture/Production) → needs-attention with 12 findings → fixes → 3 more confirmation rounds, each catching something smaller (underwater-attenuation claim scope, armory-vs-card loadout contradiction, Jul-27 server-side HS-mult correction the patch-notes research structurally missed, VSSM full-auto mis-modeling, stale STATUS.md, pistols wrongly getting the 100-pt primary budget vs EA's documented 60) → **round 6: approve ("Ship")**. 14 unique defects/accuracy gaps fixed in-gate, every fix browser-verified. Two of the biggest catches (fabricated 30-round mags in Builder for unverified weapons; quote-corrupted tooltips) were pre-existing defects, not refresh regressions.

## What's next
- Aug 18: Top Gun update ships (Interdictor sniper, Wake Island) → issue #1.
- Issues #2/#3 when trackers stabilize.

## Troubleshooting path
Research → critic (6 contradictions, 12 gaps) → verify workflow resolved all publishable ones. WebFetch summarization caught fabricating twice (bf6balancelog.com invented patch claims; a "Season 1" label mis-read) — resolved by re-fetching verbatim/raw DOM/embedded JSON.

## What couldn't be done
- EF88/BROD 3/DB-12/CZ3A1/M121 A2/secondary stats: no 2-source agreement exists yet (launch sheets bugged; trackers 403) → published as "—" per convention, tracked in #3.
- battlefinity.gg, boostmatch.gg, esports.gg, VG247 blocked direct fetch (403) — worked around via search snippets where possible, disclosed.
- Overall-#1-weapon claim (KTS100 "top overall") could not be re-confirmed for Aug → softened to "#1 LMG".

## Forensic context
Session on branch `claude/gracious-satoshi-2523b6` (worktree gracious-satoshi-2523b6). Research/verify workflow journals: session subagents dir, runs `wf_efc416af-12e` + `wf_627ed3ad-fb3`. wzstats gotchas (for future refreshes): /meta page's "Season1" badge is a UI bug (real season in the page's season object); its tier data `updatedAt` was Jul 26 despite an "Updated Aug 09" badge; the "META Guns" sidebar renders Call of Duty weapons on some pages — read the embedded `#ng-state` JSON (`store:tierlist-bf6BR`), never the sidebar.
