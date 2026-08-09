# redsec-loadouts — Wiki

## Architecture
Single self-contained `index.html` (no build step, no dependencies): CSS + HTML sections (Tier List, Builder, Squad, Armory, 4 class cards, Matrix, Data & Sources) + one classic script. Data lives in the `WEAPONS` array (62 entries: name/category/tier/dmg/rpm/mag/attach/note, `meta` flag for class picks, `dmg/rpm: null` = stats not yet verified → rendered "—", excluded from Builder). TTK model: `btk = ceil(HP / (dmg × armorMult))`, armorMult applies EA 1.3.3.0 chest-vs-armor multipliers (autos ×0.84, DMR ×0.91) in 180-HP mode only. Storage goes through a throw-safe `store` wrapper (in-memory fallback for sandboxed iframes). Weapon images self-hosted in `/images` with procedural-SVG fallback.

## Glossary
- **TTK / BTK / STK** — time / bullets / shots to kill. **Pick-100** — BF6's 100-point attachment budget per primary.
- **180 HP baseline** — REDSEC armored target (100 health + 2×40 armor). Toggleable to bare 100.
- **1.3.3.0** — Season 3 "High-Value Target" mid-season update (live 2026-06-30): +40% bullet drag, velocity −4–7%, headshot mults up, body-vs-armor mults down, sniper sweet spots narrowed.
- **RPKM vs RPK-74M** — two different LMGs (base game vs Season 3 addition). **SG 553R** — correct name (was mislisted as SG-554R).

## Decisions
See `.fleet/decisions.md` (PM register) and `docs/adr/` for architecture decision records.
