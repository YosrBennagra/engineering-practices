# Debugging and problem-solving methodology

## Wall Note / A4

- Reproduce or characterize the failure before changing code.
- Preserve evidence: timestamps, inputs, versions, logs, traces, state and environment.
- Convert symptoms into competing hypotheses.
- Run the cheapest test that most separates those hypotheses.
- Change one explanatory variable at a time when possible.
- Work from boundaries: input → transformation → state → output.
- Distinguish correlation from causation.
- Fix the underlying invariant, not only the observed example.
- Add regression protection and diagnostics proportional to recurrence risk.
- After resolution, explain why the failure escaped earlier detection.

## Detailed Notes

### Evidence-driven loop

1. State the symptom precisely.
2. Establish scope: all users? one tenant? one version? one region? one data shape?
3. Determine first known bad and last known good if possible.
4. Gather evidence without destroying transient state.
5. Build 2–4 plausible hypotheses.
6. Rank by explanatory power and probability.
7. Choose a discriminating experiment.
8. Update beliefs.
9. Locate violated invariant/root cause.
10. Fix, verify and add prevention/detection.

### Binary narrowing

For a request path, test boundaries:

- client generated correct request?
- edge/proxy preserved it?
- service parsed it?
- domain logic produced expected state?
- persistence committed?
- asynchronous consumer processed it?
- response/report read the expected source?

This narrows the search faster than reading an entire codebase.

### Root cause

“Null pointer on line 82” is a failure location, not necessarily root cause. Ask why invalid state reached that point, why the invariant was not enforced, and why detection came late.

Do not force every incident into “five whys.” Use causal graphs when multiple factors interacted.

### Debugging production safely

- prefer read-only inspection first;
- do not run unbounded diagnostic queries on hot systems;
- capture correlation IDs and exact time windows;
- compare healthy vs unhealthy samples;
- avoid “fixing” evidence before it is captured;
- use feature/config changes only with explicit scope and rollback.

### Failure modes

- random code edits until tests pass;
- overfitting to one stack trace;
- ignoring environment/version differences;
- changing several variables at once;
- jumping immediately to the most exotic hypothesis;
- calling the last change “the cause” without evidence;
- fixing symptom without regression test or diagnostics.

## Practical Scenarios

### Scenario 1 — intermittent 500

Compare failing and successful requests by tenant, payload size, instance, version and downstream latency. A pattern tied to one payload class is more useful than repeatedly restarting instances.

### Scenario 2 — “database is slow”

Separate connection acquisition, query execution, lock wait, network transfer and application processing. Each implies a different root cause and owner.

## Senior Questions / Review Exercises

1. What exactly is known versus inferred?
2. Which experiment best separates the top two hypotheses?
3. What healthy control sample can we compare against?
4. Is the proposed fix restoring an invariant or hiding a symptom?
5. What evidence must be captured before mitigation?
6. Why did existing tests/alerts/review fail to catch this?

## Related / Prerequisites

- [Production incidents](11-production-incidents-postmortems.md)
- [observability-reliability](https://github.com/YosrBennagra/observability-reliability)
- [testing-engineering](https://github.com/YosrBennagra/testing-engineering)
- [computer-science-fundamentals](https://github.com/YosrBennagra/computer-science-fundamentals)