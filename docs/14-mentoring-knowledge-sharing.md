# Mentoring and knowledge sharing

## Wall Note / A4

- Mentoring should increase another engineer’s independent judgment, not create dependency on the mentor.
- Explain reasoning and decision triggers, not only the answer.
- Match support to skill/task risk: demonstrate, pair, review, then delegate.
- Give ownership with safe boundaries and feedback loops.
- Use real work when possible; artificial exercises are secondary.
- Turn repeated questions into durable documentation, examples or automation.
- Avoid becoming the single expert every change must pass through.
- Review mistakes for learning while keeping accountability for correction.
- Teach how to verify assumptions.
- Measure mentoring by growing team capability, not mentor visibility.

## Detailed Notes

### Progression

A useful progression:

1. **Explain** the model and constraints.
2. **Demonstrate** on a real example.
3. **Pair** while the learner drives.
4. **Review** independently produced work.
5. **Delegate** an outcome with boundaries.
6. **Debrief** the decisions and surprises.
7. **Expand scope** as judgment develops.

Do not hold engineers at pairing/review forever.

### Teaching senior thinking

Teach questions:

- what invariant are we protecting?
- what can fail?
- what is reversible?
- what is the smallest safe change?
- what evidence would prove this?
- who consumes this contract?
- what is the long-term maintenance cost?

These transfer across frameworks better than memorized rules.

### Knowledge distribution

Bus-factor reduction techniques:

- rotate ownership of routine operational work;
- pair on rare/high-risk procedures;
- keep runbooks executable;
- record decisions in ADRs;
- use design/review sessions for reasoning, not lectures;
- let developing engineers lead bounded changes.

### Feedback and psychological safety

Safety does not mean low standards. Engineers need to be able to expose uncertainty and mistakes early, while still being expected to correct problems and learn from them.

### Failure modes

- mentor rewrites everything;
- “shadow me” with no deliberate transfer;
- dumping huge reading lists without application;
- keeping expert-only tasks for speed until the expert becomes a bottleneck;
- delegating high-risk work with no checkpoints;
- giving answers without explaining validation.

## Practical Scenarios

### Scenario 1 — junior repeatedly asks about migrations

Rather than answering each case, walk through expand/migrate/contract once, pair on a small migration, then ask them to write the next migration plan and review the reasoning.

### Scenario 2 — domain expert bottleneck

Rotate incident follow-up and design ownership with the expert as reviewer. Capture domain invariants and common failure modes in durable docs.

## Senior Questions / Review Exercises

1. Is the learner becoming more independent?
2. Which task is safe to delegate next?
3. What repeated explanation should become a durable artifact?
4. Are review comments teaching reasoning or merely prescribing code?
5. Where does team knowledge still depend on one person?
6. What feedback loop protects quality while ownership expands?

## Related / Prerequisites

- [Technical communication and feedback](13-technical-communication-feedback.md)
- [Ownership and maintainability](15-ownership-maintainability.md)
- [Senior/staff judgment](16-senior-staff-judgment.md)