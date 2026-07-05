# redsec-loadouts

Interactive Battlefield 6 / REDSEC loadout site: per-class meta picks (Assault / Engineer / Support / Recon), a 50-weapon tier list and armory, a Pick-100 weapon builder with live TTK simulation, A/B compare, presets, shareable build links, and squad-coverage analysis. Single self-contained `index.html` + local `/images`.

Data honesty: every meta claim on the page is sourced and dated (see the on-page "Data & Sources" panel). Last live verification: **July 5, 2026**, post-Update 1.3.3.0.

## Run it

```bash
# from the repo root — any static server works
python3 -m http.server 4178
# open http://localhost:4178/
```

Double-clicking `index.html` (file://) also works — storage, presets, share links, and dialogs are hardened for file:// and sandboxed-iframe contexts as of 2026-07-05.

## Verify it

```bash
# script parses clean:
python3 -c "import re;open('/tmp/s.js','w').write(re.findall(r'<script[^>]*>(.*?)</script>',open('index.html').read(),re.S)[0])" && node --check /tmp/s.js
```

## How it was built

Maintained with `/create-project` (finish-in-place mode): parallel research agents with adversarial verification for every data claim, single-writer integration, browser-verified fixes, 3-pass adversarial review before each commit. See `.fleet/` for decisions, forensic issue log, and the live dashboard (`bash .fleet/dashboard/serve.sh`).
