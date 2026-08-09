# 0001: Record Architecture Decisions

## Status
Accepted

## Date
2026-07-05

## Deciders
- /create-project orchestrator

## Context
This project records non-trivial structural decisions as ADRs so future agents and
contributors can understand why the codebase is shaped this way.

## Decision
Use `docs/adr/NNNN-<slug>.md` for architecture decision records. Supersede ADRs
with new ADRs instead of deleting historical context.

## Alternatives Considered
- Chat-only decisions: rejected because they are not cold-restartable.
- README-only decisions: rejected because they mix operational guidance with design history.

## Consequences
- Structural choices have durable context.
- The project carries a small documentation cost for every meaningful architecture decision.

## References
- .fleet/decisions.md
