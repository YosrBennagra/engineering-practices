# Capstone practical scenarios and senior review exercises

Use these as design/review drills. Do not jump directly to implementation. For each, write: clarified requirements, assumptions, risks, decomposition, decision records needed, rollout/rollback, review focus, production verification and follow-up debt.

## 1. Replace a critical pricing engine

The current pricing logic is duplicated across a monolith and a batch service. Product wants new rules in six weeks. Historical rules must remain auditable.

Questions:
- Where should authority live during migration?
- How do you characterize current behavior?
- What is the smallest vertical slice?
- How do you compare old/new results before authority shifts?
- What data/compatibility constraints make rollback difficult?

## 2. Public API breaking change

A field has ambiguous semantics and needs replacement. Some consumers are owned by third parties.

Questions:
- Can behavior be corrected without breaking contract?
- What version/deprecation policy is justified?
- How do you discover remaining consumers?
- What telemetry authorizes removal?
- What belongs in an ADR?

## 3. Intermittent payment duplication

Duplicate charges happen roughly once per 20,000 requests. A retrying client is suspected.

Questions:
- What evidence is needed before changes?
- Where should idempotency be enforced?
- What mitigation reduces impact immediately?
- How do you test the fix?
- Which operational signal confirms recurrence stopped?

## 4. “We need microservices”

A growing codebase has slow releases and unclear ownership. Leadership proposes splitting it into ten services.

Questions:
- Which problems would service boundaries actually solve?
- Which new costs/failure modes appear?
- What modular changes could be tested first?
- Which boundary has independent lifecycle/data/scale?
- What evidence would justify distribution later?

## 5. Zero-downtime schema change

A large table needs a new representation while multiple application versions run during rolling deployments.

Questions:
- Design expand/migrate/contract.
- How do writes behave during backfill?
- How is migration restartable?
- What parity checks are required?
- When is old-column removal safe?

## 6. Urgent compliance deadline

A required audit feature arrives mid-quarter. Existing commitments already consume team capacity.

Questions:
- What must be de-prioritized?
- Which quality constraints are non-negotiable?
- Which deliberate debt can be accepted?
- What evidence is required for “done”?
- How do you communicate estimate uncertainty?

## 7. Major production incident

A release increases error rate and corrupts a small subset of records. Reverting code may not understand newly written data.

Questions:
- What is first mitigation?
- Roll back or roll forward?
- What evidence must be preserved?
- How should incident roles be structured?
- What postmortem actions change the system rather than blame a person?

## 8. Review bottleneck

Median coding time is one day; median PR wait is two days. Senior engineers say they are too busy to review.

Questions:
- What is the actual system constraint?
- How might PR size, reviewer routing and WIP change?
- Which metric should be watched?
- How do you avoid lowering review quality?
- What mentoring opportunity exists?

## 9. Feature flag explosion

The service contains 35 flags, including old migration and experiment paths.

Questions:
- How do you classify temporary vs permanent configuration?
- What usage evidence is needed before deletion?
- How do you reduce test-state explosion?
- Which flags need owners/removal conditions?
- What process prevented cleanup?

## 10. Staff-level platform proposal

Three teams independently built job scheduling. A platform team proposes a shared scheduler.

Questions:
- Are requirements genuinely common?
- What interface and ownership would be stable?
- What migration cost is introduced?
- What should remain team-local?
- What evidence would show centralization creates leverage rather than dependency?

## Self-review rubric

A strong answer should:

- state assumptions rather than hide them;
- distinguish reversible from irreversible decisions;
- retire high-risk unknowns early;
- avoid unnecessary architecture;
- include migration/compatibility where relevant;
- define production evidence and rollback;
- protect long-term ownership without gold-plating;
- involve the right disciplines early;
- identify what belongs in other knowledge repositories for deeper technical treatment.