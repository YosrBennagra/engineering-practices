# Engineering Practices — Cheat Sheet

> How senior engineers deliver: clarify, decide, ship in small reversible steps, own production. Templates: [templates/](templates/). Hub: [software-engineer-roadmap](https://github.com/YosrBennagra/software-engineer-roadmap)

**Rigour scales with blast radius, irreversibility and uncertainty.**

## Requirements
- Start from the **outcome and observable behaviour**, not the requested implementation.
- Clarify: actors, happy path, **failure paths**, data ownership, constraints, **non-goals**, acceptance evidence.
- Separate **facts / assumptions / decisions / open questions**.
- Replace adjectives ("fast", "secure") with examples and numbers ("p95 < 300 ms at 200 req/s").
- Not ready = it can still be read two materially different ways.
- Ask "what must remain true?" (compatibility, security, performance, operations).

## Planning & estimation
- Plan around **dependencies, risk and reversibility**, not task lists.
- Retire the critical unknowns first (a spike answers **one named question**).
- Estimate in **ranges + assumptions**. False precision isn't professionalism. Re-estimate when assumptions change.
- Prioritise by value, urgency, risk reduction, dependency unlock, **cost of delay**.
- Every plan includes: migration, tests, rollout, observability, docs, **cleanup**.

## Delivery
- Small batches, **vertical slices** (thin end-to-end features) over horizontal layers.
- Integrate to main often (trunk-based, short-lived branches).
- **Deploy ≠ release:** feature flags separate shipping code from exposing behaviour.
- Every increment has a validation point. Remove flags and temporary compatibility once they've done their job.

## Pull requests & code review
| Author | Reviewer |
|---|---|
| intent clear before the diff (why, what, risk) | behaviour, correctness, security, failure handling, compatibility first. Style last |
| one conceptual change per PR | is it **simpler than necessary**? |
| state tests, migration, rollout/rollback, omissions | label **blocking** vs **nit/suggestion** |
| self-review, remove noise | explain the *reason*, review the boundary not just changed lines |
- Automate formatting/lint so humans review design and risk.
- Merge vs rebase vs squash: pick one convention for the repo and be consistent.

## Definition of Done
Code + tests + review + docs where non-obvious + observability (logs/metrics/alerts) + migration done + feature flag plan + rollback path + deployed and verified in prod + cleanup tracked.

## Decisions: RFC vs ADR
| Doc | When | Contains |
|---|---|---|
| **RFC / design proposal** | explore *before* committing, cross-team impact | problem, goals, **non-goals**, constraints, options A/B, recommendation, rollout, risks, deadline |
| **ADR** | remember a durable decision | context, decision, drivers, **alternatives rejected**, consequences (+ accepted cost), revisit triggers |
- "Best practice" isn't an argument without context. Supersede old ADRs; don't rewrite history.
- **Two-way door** (reversible) → decide fast. **One-way door** → slow down, prototype, get review.

## Refactoring & technical debt
- Refactor for a **named future change** or a named risk, not for aesthetics.
- Protect behaviour first, then small behaviour-preserving steps. No big-bang rewrites.
- Debt = economic liability: **interest** (pain per change) × change frequency. Pay it on hot paths first.
- Record intentional debt with impact, trigger and owner. Not every imperfection is debt.

## Legacy & migrations
- Assume unknown consumers. **Characterise before replacing.**
- **Expand → migrate → verify → contract** (schemas, APIs, events).
- Migrations: restartable, idempotent, observable, batched. Define rollback limits **before** destructive steps.
- **Strangler fig:** route slice by slice to the new system. It only succeeds when the old path is retired.
- Deprecate around consumers: announce, measure usage, support migration, then remove.

## Rollout & rollback
- Design release safety **before merge**. Define success **and** rollback signals in advance.
- Progressive exposure: internal → 1% → 10% → 50% → 100%, increasing only on evidence.
- Rollback can mean: flag off, route away, config restore, roll forward, or revert. It must be compatible with the data/schema.

## Debugging method
```
reproduce/characterise → preserve evidence → competing hypotheses → cheapest discriminating test
→ change one variable → fix the invariant (not the example) → regression test → why did it escape?
```
- Work from boundaries: input → transformation → state → output. Correlation ≠ causation. `git bisect` for regressions.

## Incidents & postmortems
- **Stabilise first, investigate second, improve third.**
- One incident lead (coordination) + investigators + a communicator. Timestamped action log.
- Communicate facts, impact and the next update time. Don't present speculation as fact.
- **Blameless postmortem:** timeline, impact, contributing factors, why defences failed, actions that change **detection / prevention / containment / recovery** (never "be more careful"). Verify the actions worked.

## Agile without ceremony bloat
- Optimise for **flow of validated value**. Limit WIP: finishing beats starting.
- Make blocked and aging work visible (Kanban). Scrum events only when they help planning/feedback.
- QA is a team capability, not a final gate. FE/BE/platform must not become handoff queues.

## Communication
- Lead with **context → decision needed → impact**, then details (BLUF).
- Separate facts, hypotheses, opinions, decisions. State uncertainty explicitly.
- Disagree with reasoning and constraints, not people. Close loops: decision, owner, next step.
- Feedback: specific, observable, actionable.

## Mentoring & ownership
- Grow others' independent judgment: **demonstrate → pair → review → delegate**.
- Turn repeated questions into docs, examples or automation. Don't be the bottleneck everyone waits on.
- Ownership = design → delivery → production behaviour → cleanup. Optimise lifecycle cost.

## Overengineering check
- Complexity needs a current requirement, a measured constraint, or a credible near-term need.
- New services, queues, caches and frameworks carry **permanent** operational cost.
- **Rule of least power:** the least capable mechanism that solves the problem safely.
- Count concepts, dependencies and failure modes, not just lines.

## Effectiveness
- **DORA:** deployment frequency, lead time for changes, change failure rate, time to restore.
- Never target LOC, commit counts, PR counts or story points.
- Find queues and repeated friction, fix one constraint, observe, iterate.

## Senior / staff judgment
Solve the right problem first · simplest option with an evolution path · retire expensive uncertainty early · make trade-offs legible · every "yes" has an opportunity cost · build leverage (defaults, tools, docs, people), don't centralise decisions.
