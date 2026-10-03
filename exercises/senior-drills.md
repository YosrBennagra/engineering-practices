# Senior Platform Engineering Drills

A senior answer should expose assumptions, failure modes, rollout/rollback, observability, security and cost.

## 1. Bad production rollout

A new API version passes CI but error rate reaches 8%. Cover mitigation, evidence, canary/gate changes and DB compatibility.

## 2. Kubernetes saturation

Traffic doubles. HPA scales from 5 to 20 Pods, latency worsens and DB CPU reaches 100%. Discuss downstream capacity, connection pools, backpressure/load shedding and why horizontal scaling can amplify failure.

## 3. Platform golden path

You support 80 Spring Boot services and 20 frontend apps. Teams duplicate CI, Dockerfiles, ingress and monitoring. Design templates, build contract, provenance, runtime defaults, observability, secret access, escape hatch and migration strategy.

## 4. Dependency outage

A payment provider intermittently times out. Reason about timeout budgets, retries/jitter, circuit breaking, idempotency, queues, UX and reconciliation.

## 5. Supply-chain incident

A common base image is compromised. Cover SBOM/image inventory, cache invalidation, rebuild/redeploy, credential exposure and provenance verification.

## Mastery standard

A topic is senior-level understood when you can explain mechanism, identify failure modes, make context-dependent trade-offs, design safe rollout/rollback, define evidence of success and connect runtime behavior to architecture/security.
