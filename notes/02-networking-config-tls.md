# Networking, DNS, TLS, Environments & Configuration

## Wall Note / A4

Request path: **name → DNS → IP → route → TCP/QUIC → TLS → HTTP → proxy/LB → service → process**.

DNS is cached distributed data. TLS protects transport and authenticates identities; it does not authorize business actions.

Artifacts should stay the same across environments. Configuration varies. Secrets need stronger confidentiality, rotation and audit.

## Detailed Notes

Reason about IP/subnets/routes, ports/listening sockets, TCP retransmission/timeouts, NAT/connection tracking, DNS TTLs, HTTP keep-alive and connection pools.

Connection refused often means the target is reachable but no process accepts that socket. Timeout has a wider cause set: filtering, wrong route, packet loss, overload or application timeout.

DNS TTLs do not guarantee instant failover because resolvers and applications cache.

TLS ownership includes certificate issuance/renewal, SAN/hostname correctness, trust chains, trust stores, protocol policy and clock correctness.

Prefer one artifact with validated environment-specific configuration. Fail startup on missing critical config. Avoid manually edited production snowflakes.

## Practical Example

~~~text
DATABASE_URL      required
HTTP_PORT         default 8080
LOG_LEVEL         default INFO
PAYMENTS_ENABLED  default false
~~~

A secret reference can be versioned; the secret value should not be.

## Exercises / Senior Questions

1. Why can localhost work on the host but fail inside a container?
2. A renewed TLS certificate still fails. Check SNI, chain, trust, clock and proxy layers.
3. Compare env vars, mounted config and dynamic config services.
4. Design a config rollout for a feature capable of overloading a dependency.

## Related / Prerequisites

- [system-design](https://github.com/YosrBennagra/system-design)
- [application-security](https://github.com/YosrBennagra/application-security)
