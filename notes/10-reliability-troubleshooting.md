# Reliability, Scalability & Production Troubleshooting

## Wall Note / A4

Reliability comes from failure boundaries, redundancy, graceful degradation, observability and recovery.

Troubleshoot from evidence:
scope → recent change → golden signals → dependencies → resource pressure → logs/traces → hypothesis → smallest safe test.

Golden signals: latency, traffic, errors, saturation.

## Detailed Notes

Define SLIs/SLOs. Error budgets make reliability an explicit trade-off.

Redundancy helps only across failure domains. Three Pods on one node are not node-resilient.

Scaling options: vertical resources, horizontal replicas, partitioning, caching, queues, load shedding and reducing work. Every scaling action moves pressure elsewhere. Scaling stateless APIs can overload the DB faster.

Troubleshooting:
1. confirm impact/population;
2. inspect recent changes;
3. compare healthy/unhealthy instances;
4. inspect saturation/downstream latency;
5. follow traces;
6. mitigate severe impact before perfect RCA;
7. preserve evidence;
8. correct technical/process causes after recovery.

Common runtime failures: OOMKilled, CPU throttling, pool exhaustion, DNS/TLS failure, disk pressure, bad rollout, retry storms and leaked file descriptors.

## Practical Example

~~~text
1. Declare impact and incident owner.
2. Freeze nonessential changes.
3. Mitigate: rollback, reduce load or fail over.
4. Verify recovery via user-facing SLI.
5. Preserve timeline/evidence.
6. Correct root and contributing causes.
~~~

## Exercises / Senior Questions

1. p50 is stable but p99 doubled after rollout. What first?
2. Why can retries turn partial failure into total failure?
3. Node memory pressure with low Pod RSS: what else consumes memory?
4. Design graceful degradation for a recommendation dependency.

## Related / Prerequisites

- [system-design](https://github.com/YosrBennagra/system-design)
