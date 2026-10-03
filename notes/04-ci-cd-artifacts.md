# CI/CD, Quality Gates & Artifact Management

## Wall Note / A4

CI proves a change can integrate. CD makes a proven artifact releasable/deployable. **Build once; promote many.**

Fail cheaply first:
format/lint → unit → compile → static/security checks → integration → package → scan/sign → publish → deploy → verify.

Quality gates should represent meaningful risk, not vanity metrics.

## Detailed Notes

Good CI is deterministic enough to trust, fast enough to run often, isolated from developer machines and explicit about inputs. Flaky tests destroy gate credibility; quarantine must be temporary and owned.

Deployment is not the same as release. A version can be deployed dark behind a feature flag, then released later.

Artifacts include binaries, packages, images, SBOMs, checksums, reports and manifests. Registries are systems of record.

Useful gates: compile, targeted tests, static analysis, dependency policy, migration compatibility, provenance policy and post-deployment verification.

Avoid arbitrary coverage thresholds without risk context.

## Practical Example

~~~yaml
stages: [verify, test, package, publish, deploy]
verify: [format-check, lint, sast, dependency-scan]
test: [unit-tests, integration-tests]
package: [build-image, generate-sbom, vulnerability-scan]
publish: [push-by-digest, attach-provenance]
deploy: [apply-release, smoke-test, observe-rollout]
~~~

## Exercises / Senior Questions

1. Design CI for a monorepo without rerunning every expensive test.
2. A critical CVE is unreachable in your app. What evidence supports a temporary exception?
3. Why is rebuilding during production promotion a weakness?
4. How should DB migrations work while old and new versions overlap?

## Related / Prerequisites

- [testing-engineering](https://github.com/YosrBennagra/testing-engineering)
- [application-security](https://github.com/YosrBennagra/application-security)
