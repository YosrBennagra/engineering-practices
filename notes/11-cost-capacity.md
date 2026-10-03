# Cost, Capacity & Resource Awareness

## Wall Note / A4

Cost is an architecture constraint. Optimize unit economics such as cost/request, cost/customer or cost/job.

Requests reserve schedulable capacity. Over-requesting wastes nodes; under-requesting increases contention/risk.

## Detailed Notes

Plan baseline, peak, burst, growth, failover and maintenance headroom. Sizing exactly for average load leaves no resilience.

Kubernetes requests influence node count; limits influence runtime behavior. Rightsize from representative distributions.

Major cost drivers: compute, storage/IOPS, data transfer, managed tiers, NAT/LB processing, observability cardinality and idle environments.

Cheapest infrastructure is not always efficient; reduced redundancy may increase outage cost.

## Practical Example

~~~text
Traffic:          +18%
Compute cost:     +42%
Cost per 1k req:  +20%
Cause:            CPU regression after release 1.8
Action:           profile/fix hot path before adding nodes
~~~

## Exercises / Senior Questions

1. Why can single-zone be economically worse despite a lower bill?
2. What telemetry is required to rightsize requests safely?
3. Diagnose an observability-bill spike.
4. Compare committed capacity with autoscaling uncertainty.

## Related / Prerequisites

- [system-design](https://github.com/YosrBennagra/system-design)
