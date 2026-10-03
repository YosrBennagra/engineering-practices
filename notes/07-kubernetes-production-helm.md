# Kubernetes Production Operation & Helm

## Wall Note / A4

Startup: has startup completed?

Readiness: should this Pod receive traffic now?

Liveness: is this process irrecoverably unhealthy and worth restarting?

Requests drive scheduling. Limits cap consumption. HPA changes replicas; it does not fix a saturated dependency.

Helm packages templates + defaults; always inspect rendered manifests.

## Detailed Notes

Do not make liveness depend on fragile downstream services or a dependency outage can create restart storms. Readiness may reflect dependencies when serving is impossible; graceful degradation can be safer.

CPU limits can throttle. Memory limit breaches can OOM-kill. Unrealistically low requests overpack nodes.

Scale on metrics tied to work: CPU for CPU-bound workloads, queue depth for workers, concurrency for request processors. Stabilize to avoid oscillation.

PodDisruptionBudgets protect from voluntary disruption but should not block maintenance. Use topology spread/anti-affinity across failure domains.

Helm values expose real variability; templates preserve invariants and safe defaults.

~~~bash
helm template myapp ./chart -f values-prod.yaml
helm upgrade --install myapp ./chart --atomic --wait
~~~

## Practical Example

See [examples/helm](../examples/helm).

## Exercises / Senior Questions

1. CPU is 50% but p99 latency is high. Why may CPU HPA not help?
2. Explain CrashLoopBackOff, ImagePullBackOff and Pending.
3. Design probes for a Spring app warming for 40 seconds.
4. When should a chart refuse configurability to preserve a platform invariant?

## Related / Prerequisites

- [spring-mastery](https://github.com/YosrBennagra/spring-mastery)
