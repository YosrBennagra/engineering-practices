# Identifying overengineering and unnecessary complexity

## Wall Note / A4

- Complexity needs a current requirement, measured constraint or credible near-term need.
- Prefer one clear implementation over a framework for hypothetical variants.
- Abstract after meaningful repetition or a stable boundary appears.
- New services, queues, caches, frameworks and layers carry permanent operational/cognitive cost.
- “Scalable” is incomplete without workload and failure requirements.
- Generality that nobody uses is inventory, not value.
- Delete configuration switches that represent impossible choices.
- Count concepts, dependencies and failure modes—not only lines of code.
- Use the rule of least power: choose the least capable mechanism that solves the problem safely.
- Preserve an evolution path, not every future option.

## Detailed Notes

### Complexity budget

Every design spends complexity across:

- code concepts;
- runtime components;
- data models;
- deployment;
- observability;
- failure modes;
- team knowledge;
- testing matrix;
- migrations/upgrades.

A solution can reduce code complexity while increasing system complexity.

### Overengineering signals

- abstraction with one implementation and no stable boundary reason;
- generic plugin architecture before a second plugin;
- microservice split with the same team/data/lifecycle;
- queue introduced where synchronous work meets requirements;
- cache added before measuring latency or load;
- configuration for choices that never vary;
- “enterprise” patterns copied without matching constraints;
- custom platform replacing a maintained dependency without a strategic reason.

None of these are always wrong. They are triggers to demand justification.

### Decision test

Ask:

1. What requirement does this complexity satisfy?
2. What evidence shows the simpler option fails?
3. What ongoing cost is introduced?
4. Can we add this later without prohibitive migration?
5. Is the future need likely enough and close enough to pay now?

If complexity is cheap to add later, defer it.

### Underengineering is also real

Avoid simplistic minimalism. Security boundaries, financial correctness, durability, compliance, critical recovery and known scale can justify complexity immediately. The goal is **necessary complexity only**.

### Failure modes

- architecture as résumé building;
- general frameworks hiding simple domain logic;
- one abstraction per class;
- premature distributed systems;
- refusing necessary complexity under “YAGNI”;
- simplification that destroys required isolation or compatibility.

## Practical Scenarios

### Scenario 1 — microservice proposal

A module has 5,000 lines. Size alone is not a reason to split. Check independent scaling, ownership, deployability, data boundaries and failure isolation. If they do not differ, improve modularity first.

### Scenario 2 — future multi-provider support

Only one provider exists and no roadmap indicates a second. Keep a clean boundary around provider-specific code, but avoid building a dynamic plugin registry, discovery protocol and configuration DSL.

## Senior Questions / Review Exercises

1. Which concrete requirement pays for each new concept?
2. What simpler solution was rejected, and why?
3. Can this complexity be introduced later?
4. Is this abstraction based on stable variation or speculation?
5. What new failure mode/operational burden is added?
6. Are we using “simplicity” to ignore a real non-functional requirement?

## Related / Prerequisites

- [Technical debt](07-refactoring-technical-debt.md)
- [Senior/staff judgment](16-senior-staff-judgment.md)
- [programming-principles](https://github.com/YosrBennagra/programming-principles)
- [design-patterns](https://github.com/YosrBennagra/design-patterns)
- [software-architecture](https://github.com/YosrBennagra/software-architecture)