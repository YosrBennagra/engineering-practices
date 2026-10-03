# Infrastructure as Code & Cloud Fundamentals

## Wall Note / A4

IaC makes infrastructure changes reviewable, repeatable, versioned and convergent.

State records what the tool believes exists. Drift is divergence between declared and actual infrastructure.

Cloud primitives: identity, networking, compute, storage, managed data, load balancing, DNS, secrets, monitoring and billing.

## Detailed Notes

Treat state backends as critical infrastructure: locking, encryption, access control and recovery matter.

Choose module boundaries around stable ownership/capability boundaries. One global state creates blast radius; hundreds of tiny states create dependency pain.

Cloud network reasoning: VPC/VNet → subnets → routes → gateways/NAT → security controls → load balancers → compute.

Managed services trade control for reduced operational burden. Evaluate feature fit, availability, backup/restore, observability, scaling, portability and cost.

High-risk changes include replacements, stateful resources, routes and shared controls. Review plans and constrain blast radius.

## Practical Example

See [examples/iac/main.tf](../examples/iac/main.tf). A platform module should encode safe defaults rather than make every team rediscover them.

## Exercises / Senior Questions

1. Why can importing manually created resources be safer than recreating them?
2. Design state boundaries for network, platform and application stacks.
3. Compare managed Kubernetes and serverless compute for a small team.
4. Explain safe replacement of a stateful cloud resource.

## Related / Prerequisites

- [software-architecture](https://github.com/YosrBennagra/software-architecture)
- [system-design](https://github.com/YosrBennagra/system-design)
