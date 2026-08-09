# Issue Log

Record every bug, blocker, failed hypothesis, root cause, fix, verification command,
and contextual clue. Wrong hypotheses stay here so future agents do not repeat them.

## Template
- Symptom:
- Impact:
- First seen in:
- Evidence:
- Hypotheses:
  - H1:
- Root cause:
- Fix:
- Verification:
- Regression guard:
- Context:
- Follow-up:

## ISSUE-1 — Unguarded top-level localStorage kills entire script in sandboxed iframes
- **Symptom (user):** "the html you always give me" renders but no button works.
- **Evidence:** index.html:1768 `let presets = JSON.parse(localStorage.getItem(...))` at top level; sandboxed iframes (chat/artifact previews) throw SecurityError on localStorage access → whole classic script aborts → zero listeners bound.
- **Root cause:** no try/catch around storage access.
- **Fix:** `store` wrapper probing localStorage in try/catch with in-memory fallback; all reads/writes routed through it.
- **Verification:** node --check parse OK; live browser: preset save→"1 stored", delete→"0 stored" (2026-07-05 preview session).

## ISSUE-2 — prompt()/confirm() dependencies made Save/Delete silent no-ops
- **Symptom:** clicking "Save Current as Preset" did nothing (reproduced in preview: storage stayed null).
- **Root cause:** prompt() returns null / is blocked in headless + sandboxed iframe contexts; confirm() same for delete.
- **Fix:** modal-free auto-named save with "✓ Saved" flash; two-click armed delete ("✓?" for 2.5s).
- **Verification:** live clicks in preview show save + both-click delete working end to end.

## ISSUE-3 — Share link built from location.origin → "null/..." on file://
- **Root cause:** location.origin is "null"/"file://" for double-clicked files.
- **Fix:** URL now `location.href.split('#')[0] + hash`; clipboard failure now shows an inline readonly input (showShareLink) instead of prompt().
- **Verification:** eval shows href-based URL; fallback input renders with correct value; hash round-trip decode restores weapon + attachments (verified pre-fix and unaffected).
