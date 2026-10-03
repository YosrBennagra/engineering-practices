# Pull request template

## Why
Problem/outcome addressed.

## What changed
Conceptual summary, not a file-by-file narration.

## Risk
What behavior/data/contracts could be affected?

## Evidence
Tests, screenshots, benchmarks, migration checks or manual verification.

## Compatibility / migration
Old clients, data, events, schemas or rollout constraints.

## Rollout / rollback
If relevant: exposure mechanism, success signal, rollback trigger/action.

## Non-goals
Important adjacent work intentionally excluded.

## Author self-review
- [ ] Diff contains no accidental/generated/noise changes.
- [ ] Failure and edge paths considered.
- [ ] Tests match the risk.
- [ ] Security/privacy implications considered.
- [ ] Docs/ADR/runbook updated if required.
- [ ] Temporary mechanisms have cleanup conditions.