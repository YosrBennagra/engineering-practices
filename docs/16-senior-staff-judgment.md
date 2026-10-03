# Senior/staff-level engineering judgment

## Wall Note / A4

- Solve the right problem before solving it elegantly.
- Increase process/design rigor with **blast radius, irreversibility and uncertainty**.
- Prefer the simplest option that satisfies current constraints with a credible evolution path.
- Protect team focus; every “yes” has an opportunity cost.
- Retire high-cost uncertainty early.
- Distinguish local code quality from system/team outcomes.
- Make trade-offs legible so others can challenge them.
- Use influence to improve decisions, not to centralize every decision.
- Build leverage: better defaults, tools, patterns, docs and capability.
- Staff-level scope is often about coordinating system constraints across boundaries, not writing the most code.

## Detailed Notes

### Judgment dimensions

A useful decision matrix:

| Dimension | Questions |
|---|---|
| Outcome | What real result matters? |
| Risk | What can fail and how severe is it? |
| Reversibility | How costly is changing our mind? |
| Evidence | What do we know vs assume? |
| Complexity | What new concepts/operations are introduced? |
| Compatibility | Who/what must keep working? |
| Ownership | Who can support this over time? |
| Time | What must be true now vs later? |
| Leverage | Does this improve many future changes? |

### Senior vs staff emphasis

Titles vary by company, but commonly:

- **Senior**: independently owns complex changes, handles ambiguity, reviews designs, improves team practices, operates production systems.
- **Staff-level**: shapes technical direction across teams/systems, resolves cross-boundary constraints, creates leverage, reduces organizational technical risk, and enables others to execute.

This is not a prestige ladder based on abstraction level. Staff work can be deleting a platform nobody needs if that produces the best system outcome.

### Decision proportionality

Examples:

- rename a private method → decide locally;
- add a small endpoint → team review;
- public API semantics → ADR/design review;
- cross-team storage platform → RFC with migration/operations analysis.

Over-process reversible local decisions and the organization slows. Under-process irreversible shared decisions and it accumulates expensive mistakes.

### Technical leadership without bottlenecking

Good technical leadership:

- clarifies constraints;
- surfaces risks;
- proposes options;
- creates decision mechanisms;
- delegates ownership;
- reviews critical points;
- documents durable decisions.

Bad leadership requires every decision to route through one expert.

### Failure modes

- equating seniority with complexity;
- solving hypothetical scale far beyond evidence;
- ignoring organizational ownership in architecture;
- protecting sunk-cost designs;
- escalating every disagreement;
- making decisions privately then presenting them as inevitable;
- optimizing team output while harming another system/team.

## Practical Scenarios

### Scenario 1 — build a shared platform?

Three teams have similar needs. Before centralizing, determine whether requirements and lifecycle really align. A shared platform creates coupling and ownership obligations; duplication may be cheaper until patterns stabilize.

### Scenario 2 — deadline vs architecture

A deadline is real, but avoid framing as “quality or speed.” Identify which quality attributes are non-negotiable, which scope can shrink, and which deliberate debt can be safely accepted with a repayment trigger.

## Senior Questions / Review Exercises

1. What is the simplest viable option under actual constraints?
2. Which part of this decision is hardest to reverse?
3. Are we solving current evidence or imagined future scale?
4. Who gains and who pays the ongoing complexity cost?
5. What can be delegated safely?
6. What reusable improvement would make many future decisions cheaper?

## Related / Prerequisites

- [RFC/ADR decisions](06-rfc-adr-decision-making.md)
- [Ownership and maintainability](15-ownership-maintainability.md)
- [Overengineering](17-overengineering-complexity.md)
- [Engineering effectiveness](18-engineering-effectiveness.md)
- [software-architecture](https://github.com/YosrBennagra/software-architecture)
- [system-design](https://github.com/YosrBennagra/system-design)