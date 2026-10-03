# Feature rollout and rollback thinking

## Wall Note / A4

- Design release safety before merge, not during an incident.
- Separate **deployment** from **exposure** when useful.
- Choose rollout granularity that limits blast radius.
- Define success and rollback signals in advance.
- Prefer kill switches/flags for risky behavior when they are simpler than redeployment.
- Make rollback compatible with data/schema changes.
- “Rollback” may mean disable, route away, restore config, roll forward, or revert—not always git revert.
- Increase exposure only after evidence.
- Clean up stale flags and temporary compatibility paths.
- Treat rollback drills and runbooks as evidence, not paperwork.

## Detailed Notes

### Rollout options

- all-at-once: simplest; suitable for low-risk reversible changes;
- canary: small traffic or instance subset;
- cohort: internal users, tenant segment, region, account class;
- percentage rollout: gradual user/traffic expansion;
- shadow: compute new behavior without making it authoritative;
- blue/green: switch between separately deployed environments where platform supports it.

The practice belongs here; infrastructure implementation belongs in devops-platform-engineering.

### Release plan

Specify:

1. prerequisite compatibility;
2. exposure mechanism;
3. first cohort;
4. validation signals;
5. expected observation duration;
6. expansion steps;
7. rollback trigger;
8. rollback action;
9. data consequences;
10. cleanup owner.

### Rollback constraints

A binary deploy can be reverted. Data may not be.

Examples:

- new code writes a field old code cannot parse;
- irreversible external side effect already occurred;
- data backfill transformed semantics;
- event consumers advanced offsets with incompatible behavior.

In those cases the safer response may be **roll forward** with a targeted fix while disabling further exposure.

### Feature flags

Flags are useful for decoupling release, but impose complexity:

- multiple behavior combinations;
- test matrix;
- stale branch paths;
- ownership ambiguity;
- runtime configuration risk.

Give each temporary flag an owner and removal condition.

### Failure modes

- 100% rollout immediately after deploy for a high-risk change;
- no definition of “healthy”;
- rollback documented as “revert PR” despite schema changes;
- flag remains for years;
- rollout signal depends on dashboards unavailable to responders;
- canary traffic not representative of the risky path.

## Practical Scenarios

### Scenario 1 — new checkout calculation

Deploy code dark, shadow the calculation, compare outputs, expose to internal/test tenants, then small production percentage. Rollback means disabling authority for the new calculator, not redeploying.

### Scenario 2 — client/server protocol change

Release server compatibility first. Wait until sufficient clients support the new contract before making it required. Rollback remains possible because the server continues understanding the old form.

## Senior Questions / Review Exercises

1. What is the smallest blast radius for first exposure?
2. Which metric/log/business signal proves safety?
3. What exact condition triggers rollback?
4. Is old code compatible with data written by new code?
5. When would roll-forward be safer than rollback?
6. Who removes the rollout mechanism afterward?

## Related / Prerequisites

- [Legacy migrations](08-legacy-migrations-compatibility.md)
- [Production ownership](11-production-incidents-postmortems.md)
- [devops-platform-engineering](https://github.com/YosrBennagra/devops-platform-engineering)
- [observability-reliability](https://github.com/YosrBennagra/observability-reliability)