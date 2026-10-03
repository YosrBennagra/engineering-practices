# Technical planning, estimation, prioritization and risk

## Wall Note / A4

- Plan around **dependencies, risk and reversibility**, not just task lists.
- Identify the critical unknowns before producing precise estimates.
- Estimate ranges and assumptions; false precision is not professionalism.
- Sequence work so expensive mistakes are discovered early.
- Prioritize by value, urgency, risk reduction, dependency unlock and cost of delay.
- Separate **delivery risk** from **technical risk**.
- Use spikes only when they answer a named decision question.
- Include migration, testing, rollout, observability, documentation and cleanup in the plan.
- Re-estimate when assumptions change; do not defend stale numbers.
- A senior plan makes failure modes and escape routes visible.

## Detailed Notes

### Planning workflow

1. Restate the outcome and boundaries.
2. Sketch current and target state.
3. List dependencies and externally controlled prerequisites.
4. List technical unknowns and operational risks.
5. Choose the smallest architecture that satisfies current constraints.
6. Break the change into reversible increments.
7. Identify validation after each increment.
8. Define rollout, rollback and compatibility needs.
9. Estimate with assumptions and confidence.
10. Replan as evidence arrives.

A plan should answer **what changes, in what order, why that order is safe, what could go wrong, and how we know each step worked**.

### Estimation and uncertainty

Use an estimate as a decision aid, not a promise detached from uncertainty.

Useful forms:

- range: “3–5 engineering days if API behavior is stable”;
- confidence: “high confidence on implementation, low confidence on partner certification”;
- scenario: optimistic / expected / pessimistic;
- explicit unknown: “database backfill duration depends on production cardinality; measure before committing to a window.”

Break uncertainty into:

- **known work** — understood implementation;
- **known unknowns** — questions you can investigate;
- **external uncertainty** — approvals, vendor behavior, other teams;
- **emergent work** — defects or constraints discovered during change.

### Risk-driven sequencing

High-risk examples:

- irreversible schema changes;
- authentication/authorization;
- money or state transitions;
- data migration;
- high fan-out APIs;
- cross-team protocol changes;
- changes with weak observability;
- high-traffic hot paths.

Retire those risks before spending weeks polishing low-risk UI or abstractions around an unproven core.

### Prioritization

A useful decision frame:

**Priority ≈ impact × urgency × confidence + risk reduction + dependency unlock − effort − interruption cost**

Do not turn this into fake mathematics. The value is making dimensions explicit.

Technical debt can be high priority when it causes incidents, blocks delivery, creates security exposure, or makes every change expensive. It is lower priority when it is merely aesthetically unpleasant.

### Failure modes

- planning by file count;
- treating estimates as commitments after assumptions change;
- hiding uncertainty to appear confident;
- “research” with no decision it is meant to unlock;
- large plans with no intermediate validation;
- prioritizing visible feature work while ignoring migration or operational risk;
- doing easy tasks first because they are easy.

## Practical Scenarios

### Scenario 1 — uncertain vendor API

Instead of estimating the full integration from documentation alone, build a narrow compatibility spike to verify auth, pagination, error semantics and rate limits. Use the result to update the plan.

### Scenario 2 — risky schema migration

The feature requires moving from one identifier type to another. Prioritize dual-read/dual-write compatibility and backfill observability before consumer migration and cleanup.

## Senior Questions / Review Exercises

1. Which uncertainty has the highest expected cost if discovered late?
2. What work can be deleted from the plan without harming the target outcome?
3. Which dependency can block the critical path?
4. Which step is hardest to reverse?
5. What estimate assumption should be written next to the number?
6. What evidence should trigger replanning?

## Related / Prerequisites

- [Requirements and decomposition](01-sdlc-requirements.md)
- [Iterative delivery](03-iterative-delivery.md)
- [Legacy migrations](08-legacy-migrations-compatibility.md)
- [Rollout and rollback](09-rollout-rollback.md)
- [system-design](https://github.com/YosrBennagra/system-design)