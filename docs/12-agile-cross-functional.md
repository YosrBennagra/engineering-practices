# Agile, Kanban, Scrum and cross-functional collaboration without ceremony bloat

## Wall Note / A4

- Optimize for **flow of validated value**, not compliance with a framework.
- Limit work in progress; finishing is usually more valuable than starting.
- Make blocked work visible.
- Use Scrum events only when they improve planning, synchronization, feedback or learning.
- Use Kanban concepts to expose queues, bottlenecks and aging work.
- Product owns outcome priority; engineering must surface technical risk/cost.
- QA is a capability across the team, not a final gate.
- Frontend/backend/platform boundaries should not become handoff queues.
- Replace recurring meetings with asynchronous artifacts when that improves clarity.
- Measure process only when a metric supports a decision.

## Detailed Notes

### Agile principles in practice

Useful agility means:

- short feedback loops;
- small batches;
- adapting to evidence;
- collaborating with stakeholders;
- maintaining technical quality so change stays affordable.

It does not mean no planning or constant scope changes.

### Scrum concepts

Potentially useful:

- sprint/iteration: bounded planning horizon;
- review/demo: feedback on actual outcomes;
- retrospective: inspect and change working system;
- daily synchronization: surface blockers and coordination needs.

Failure occurs when these become status theater, fixed scripts, or substitutes for actual engineering collaboration.

### Kanban concepts

- visualize work states;
- explicit WIP limits;
- track blocked/aging items;
- manage flow;
- improve bottlenecks.

A board is not Kanban if it merely stores tickets while 30 items remain “in progress.”

### Cross-functional work

A senior engineer should create early contact between specialties around risky boundaries.

Examples:

- frontend + backend agree error/contract behavior before separate implementation;
- QA contributes edge cases during requirement clarification;
- platform reviews deployment/secret/resource implications before release;
- product understands technical constraints and alternative scope options.

Do not throw work “over the wall.”

### Planning under changing priorities

When priority changes, make the trade explicit:

- what work stops?
- what partially completed work becomes waste?
- what operational/technical obligation cannot safely be paused?
- which commitment changes?

Accepting every urgent request without de-prioritizing anything is not agility.

### Failure modes

- velocity as a performance target;
- story points treated as hours;
- sprint commitment overriding evidence;
- QA only after development is “done”;
- ceremonies with no decisions;
- status meetings duplicating the board;
- platform/security involved only at release;
- endless work in progress.

## Practical Scenarios

### Scenario 1 — priority interruption

A production-critical compliance change arrives mid-iteration. Replan explicitly: stop a lower-value item, preserve current work safely, update stakeholders and track the new risk. Do not silently overload the team.

### Scenario 2 — frontend blocked on API

Agree a versioned contract/examples early, use mocks only as a temporary coordination tool, and validate integration continuously rather than waiting for both sides to “finish.”

## Senior Questions / Review Exercises

1. Which current ceremony produces a decision or feedback we actually use?
2. Where is work waiting rather than being worked?
3. Which WIP item should finish before we start another?
4. Which specialist needs to be involved earlier?
5. Which metric is being gamed or used without a decision attached?
6. What must be de-prioritized when urgent work enters?

## Related / Prerequisites

- [Requirements](01-sdlc-requirements.md)
- [Iterative delivery](03-iterative-delivery.md)
- [Engineering effectiveness](18-engineering-effectiveness.md)
- [testing-engineering](https://github.com/YosrBennagra/testing-engineering)
- [devops-platform-engineering](https://github.com/YosrBennagra/devops-platform-engineering-)