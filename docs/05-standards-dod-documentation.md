# Coding standards, Definition of Done and durable documentation

## Wall Note / A4

- Standards should remove recurring ambiguity, not encode personal taste.
- Automate formatting and objective checks where practical.
- Keep human review attention for design, correctness and risk.
- Definition of Done must include everything required for the change to be **safely usable and supportable**.
- Documentation should live as close as practical to the thing it explains.
- Write docs for decisions, boundaries, operations and non-obvious behavior—not every obvious line of code.
- Prefer examples, ownership and review dates over large generic documents.
- Remove or fix stale documentation; wrong docs are worse than missing docs.
- Do not mark work “done” while migration, observability, cleanup or rollback obligations remain hidden.
- Standards need an escape mechanism for justified exceptions.

## Detailed Notes

### Useful standards

A good standard is:

- tied to a failure mode or recurring decision;
- objectively checkable when possible;
- short enough to remember;
- revisited when technology or constraints change.

Examples: error handling conventions, API versioning rules, schema migration constraints, dependency policies, logging fields, accessibility baseline, code ownership boundaries.

Avoid standards that merely fossilize a senior engineer’s preferences.

### Definition of Done

A practical DoD can include, when relevant:

- behavior meets acceptance examples;
- tests at the right levels exist and pass;
- security/privacy implications addressed;
- backward compatibility considered;
- migration tested;
- documentation updated;
- observability supports detection/diagnosis;
- rollout and rollback are defined;
- temporary flags/tasks have owners and removal conditions;
- production verification has a clear plan.

Not every item applies to every change. The discipline is **conscious applicability**, not ceremony.

### Documentation hierarchy

Prefer:

1. README / getting-started for entry.
2. Architecture overview for boundaries.
3. ADRs for durable decisions.
4. Runbooks for operational procedures.
5. API/schema contracts near the interface.
6. Code comments only for “why” and non-obvious constraints.
7. Issue/RFC history for temporary planning context.

### Keeping docs alive

Docs stay useful when they are part of change workflows. If an API changes, its contract doc changes in the same PR. If an ADR is superseded, mark it superseded and link the replacement. If a runbook fails during an incident, fix it in the follow-up.

### Failure modes

- giant style guide nobody reads;
- relying on reviewers to enforce formatting manually;
- “done” meaning implementation only;
- docs copied across repositories until contradictory;
- comments describing obvious syntax;
- no owner for operational docs;
- docs that state what, but not why or constraints;
- process rules with no observed problem they solve.

## Practical Scenarios

### Scenario 1 — repeated error-handling bugs

Turn the repeated lesson into a documented error-handling standard plus lint/test support where possible, rather than repeating the same PR comment indefinitely.

### Scenario 2 — stale onboarding doc

A new engineer follows setup instructions and they fail. Treat that as a product defect in developer experience; fix the commands and remove dead paths rather than adding another workaround paragraph.

## Senior Questions / Review Exercises

1. Which parts of our DoD prevent real failures versus ceremonial box-checking?
2. Which review comments should become automation or a standard?
3. What documentation would be expensive to rediscover six months from now?
4. Who owns keeping this document correct?
5. What exception mechanism prevents the standard becoming dogma?
6. Which “done” tasks are actually hidden follow-up work?

## Related / Prerequisites

- [Code review](04-code-review-prs-integration.md)
- [RFC/ADR decisions](06-rfc-adr-decision-making.md)
- [Production ownership](11-production-incidents-postmortems.md)
- [programming-principles](https://github.com/YosrBennagra/programming-principles)