# Ownership, maintainability and long-term thinking

## Wall Note / A4

- Ownership means seeing a change through design, delivery, production behavior and cleanup.
- Optimize lifecycle cost, not only implementation speed.
- Make the correct path easy for the next engineer.
- Prefer clear boundaries and boring mechanisms over clever local optimizations.
- Treat dependencies, flags, migrations, documentation and alerts as things that need lifecycle owners.
- Design for diagnosability where failures matter.
- Leave the area better understood, not necessarily “cleaner” everywhere.
- Avoid local optimizations that shift cost to operations, QA, consumers or future teams.
- Track temporary mechanisms until removal.
- Maintainability is the ability to change safely with reasonable cognitive load.

## Detailed Notes

### Lifecycle ownership

A senior engineer asks beyond merge:

- How is this deployed?
- How do we know it works?
- How does it fail?
- Who is paged/supporting it?
- How is it upgraded?
- What must be removed later?
- What happens when requirements change?
- Can a new engineer understand the boundary?

### Maintainability dimensions

- conceptual clarity;
- cohesion and ownership;
- stable contracts;
- testability;
- diagnosability;
- dependency health;
- documentation of non-obvious decisions;
- migration friendliness;
- operational simplicity.

Do not reduce maintainability to code style.

### Local vs system cost

Example: adding a new service may make one team’s code cleaner while creating deployment, ownership, latency, tracing and incident complexity. The system-level lifecycle cost may be worse than a well-bounded module.

### Temporary work

Temporary mechanisms are dangerous when invisible. Record:

- why they exist;
- owner;
- removal condition/date;
- how remaining usage is measured.

Examples: feature flags, compatibility adapters, duplicate writes, migration tables, emergency rate limits.

### Failure modes

- “my code is merged, my job is done”;
- adding dependencies with no upgrade strategy;
- cleanup tickets with no trigger/owner;
- operational complexity externalized to another team;
- optimizing abstract extensibility while current changes are hard to understand;
- rewriting stable code without a business/engineering need.

## Practical Scenarios

### Scenario 1 — new third-party library

Evaluate security/maintenance health, API lock-in, operational footprint, transitive dependencies and exit cost—not only how quickly it solves today’s task.

### Scenario 2 — temporary dual-write

Ship with reconciliation, telemetry and a removal milestone. If the old write remains forever, the migration has failed even if production is stable.

## Senior Questions / Review Exercises

1. What lifecycle cost appears after implementation?
2. Who owns this dependency or temporary path?
3. What will make the next change harder?
4. Is complexity being shifted to another team?
5. How will someone diagnose this six months from now?
6. What cleanup is required for the change to be truly complete?

## Related / Prerequisites

- [Standards and documentation](05-standards-dod-documentation.md)
- [Technical debt](07-refactoring-technical-debt.md)
- [Production ownership](11-production-incidents-postmortems.md)
- [Senior/staff judgment](16-senior-staff-judgment.md)