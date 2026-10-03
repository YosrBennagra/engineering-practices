# Deployment Strategies, Reverse Proxies & Load Balancing

## Wall Note / A4

Deployment strategy controls risk exposure.

- Rolling: gradual replacement; common default.
- Blue/green: two environments and traffic switch; quick reversal, extra capacity.
- Canary: small real-traffic exposure; needs trustworthy metrics.
- Recreate: downtime but simple; valid for some workloads.

Reverse proxy forwards/terminates application traffic. Load balancer distributes traffic across healthy targets.

## Detailed Notes

Rolling safety depends on compatibility between old/new versions, especially DB schema and APIs.

Blue/green can switch traffic back quickly but cannot undo already-applied data side effects.

Canary needs explicit decision rules: errors, latency, business signals, sample size and abort conditions.

Proxy ownership includes TLS termination, request/body limits, forwarding headers, timeouts, retries, buffering and protocol behavior. Retrying non-idempotent requests can duplicate effects.

LB algorithms include round-robin, least-connections and hashing. Sticky sessions may hide architectural coupling.

## Practical Example

| Constraint | Usually prefer |
|---|---|
| Minimal extra capacity | Rolling |
| Fast traffic switch | Blue/green |
| Incremental real-user risk | Canary |
| Cannot run two versions | Recreate/coordinated rolling |

## Exercises / Senior Questions

1. Why can readiness be green while a canary is bad?
2. Design timeout budgets across client, proxy, service and DB.
3. Explain retry amplification.
4. What must remain compatible while versions overlap?

## Related / Prerequisites

- [system-design](https://github.com/YosrBennagra/system-design)
- [api-engineering](https://github.com/YosrBennagra/api-engineering)
