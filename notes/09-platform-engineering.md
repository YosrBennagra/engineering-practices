# Platform Engineering

## Wall Note / A4

Platform engineering builds an internal product: paved roads reducing cognitive load while preserving security, reliability and governance defaults.

A platform is not merely a Kubernetes team. It exposes useful capabilities through stable contracts and self-service.

## Detailed Notes

Start with developer jobs-to-be-done: create service, deploy, obtain DNS/TLS, access secrets, observe, provision dependencies, roll back and understand ownership/cost.

Golden paths should make the recommended route easier than custom assembly while keeping an escape hatch for valid exceptions.

Typical capabilities:
- service templates;
- CI/CD contracts;
- artifact/provenance conventions;
- runtime/security defaults;
- observability;
- service catalog/ownership metadata;
- policy automation.

Anti-patterns: hiding everything behind magic, ticket queues instead of self-service, one template for every workload and unversioned platform changes.

Measure adoption, lead time, failure rate and developer friction, not only cluster uptime.

## Practical Example

~~~yaml
name: orders-api
owner: commerce
runtime: kubernetes
tier: 1
slo: 99.9
repository: ...
runbook: ...
dashboard: ...
dependencies: [payments-api]
~~~

## Exercises / Senior Questions

1. Define platform SLOs reflecting developer outcomes.
2. What belongs in a golden path versus app code?
3. How do you migrate 200 services away from an EOL base image?
4. When should a team bypass the paved road?

## Related / Prerequisites

- [software-architecture](https://github.com/YosrBennagra/software-architecture)
