# Supply-Chain & Pipeline Security

## Wall Note / A4

Protect the path:
developer identity → repository → CI runner → dependencies → build → artifact → registry → deployment identity → runtime.

Principles: least privilege, short-lived credentials, immutable artifacts, provenance, trusted dependencies, isolated runners and auditable promotion.

## Detailed Notes

A secure app can still be compromised through stolen CI credentials, malicious dependencies, poisoned base images, untrusted PR code running with secrets, mutable tags, compromised registries or overpowered deployment tokens.

Prefer workload identity/OIDC federation over long-lived cloud keys where supported. Scope permission by repository/environment/job. Separate build and production deployment identities.

Use lock files where appropriate, trusted registries, scanning, SBOMs and update processes.

Treat PR code as untrusted input. Do not expose production secrets to unnecessary build steps.

Record source revision, builder identity, dependency inputs, artifact digest and provenance/verification metadata.

## Practical Example

~~~text
ALLOW deployment only if:
- digest exists in approved registry;
- vulnerability policy passes or exception is documented;
- provenance ties digest to approved source;
- deployment identity is authorized;
- environment approval policy passes.
~~~

## Exercises / Senior Questions

1. Why is secret scanning necessary but insufficient?
2. Compare long-lived registry password with OIDC short-lived credentials.
3. How would you contain a compromised CI runner?
4. Why deploy by digest rather than only a tag?

## Related / Prerequisites

- [application-security](https://github.com/YosrBennagra/application-security)
- [testing-engineering](https://github.com/YosrBennagra/testing-engineering)
