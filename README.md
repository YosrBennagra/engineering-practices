# DevOps & Platform Engineering — 0 → Expert

Production/platform engineering from fundamentals to senior/expert. Part of the interconnected **0 → expert software-engineering knowledge system**. Master index: [software-engineer-roadmap](https://github.com/YosrBennagra/software-engineer-roadmap).

## Learning order

1. [Linux, shell, processes and delivery Git](notes/01-linux-git.md)
2. [Networking, DNS, TLS, environments and configuration](notes/02-networking-config-tls.md)
3. [Containers, Docker, registries and image lifecycle](notes/03-containers-registries.md)
4. [CI/CD, quality gates and artifact management](notes/04-ci-cd-artifacts.md)
5. [Deployment strategies, reverse proxies and load balancing](notes/05-deployments-proxies.md)
6. [Kubernetes core](notes/06-kubernetes-core.md)
7. [Kubernetes production operation and Helm](notes/07-kubernetes-production-helm.md)
8. [Infrastructure as code and cloud fundamentals](notes/08-iac-cloud.md)
9. [Platform engineering](notes/09-platform-engineering.md)
10. [Reliability, scalability and production troubleshooting](notes/10-reliability-troubleshooting.md)
11. [Cost, capacity and resource awareness](notes/11-cost-capacity.md)
12. [Supply-chain and pipeline security](notes/12-supply-chain-security.md)
13. [Senior drills](exercises/senior-drills.md)

## Progress checklist

- [x] Linux, shell, processes, signals and resource limits
- [x] Git fundamentals relevant to delivery
- [x] Networking, DNS and TLS
- [x] Environments and configuration
- [x] Containers, Docker, registries and image lifecycle
- [x] CI/CD, quality gates and artifact management
- [x] Rolling, blue/green, canary and recreate deployments
- [x] Reverse proxies and load balancing
- [x] Kubernetes pods, deployments, services, ingress, config, secrets and storage
- [x] Probes, resources, autoscaling and disruption
- [x] Helm
- [x] Infrastructure as code and cloud fundamentals
- [x] Platform engineering
- [x] Reliability and production troubleshooting
- [x] Cost/resource awareness
- [x] Supply-chain and pipeline security
- [x] Practical examples and senior questions

## Topic map

~~~mermaid
flowchart LR
  CODE[Application code] --> GIT[Git]
  GIT --> CI[CI + quality gates]
  CI --> ART[Immutable artifact]
  ART --> REG[Registry]
  REG --> CD[Deployment]
  CD --> K8S[Kubernetes/runtime]
  K8S --> NET[Ingress / proxy / LB / DNS / TLS]
  K8S --> OBS[Logs / metrics / traces]
  K8S --> REL[Reliability / autoscaling]
  IAC[IaC + cloud] --> K8S
  SEC[Secrets + supply-chain security] --> CI
  SEC --> K8S
  COST[Cost + capacity] --> IAC
  PLATFORM[Platform engineering] --> CI
  PLATFORM --> K8S
~~~

## Repository contract

Every important topic includes **Wall Note / A4**, **Detailed Notes**, **Practical Example**, **Exercises / Senior Questions**, and **Related / Prerequisites**.

The goal is not memorizing commands. It is reasoning about delivery systems under failure, scale, security and cost constraints.

## Knowledge-system links

- [software-engineer-roadmap](https://github.com/YosrBennagra/software-engineer-roadmap)
- [software-architecture](https://github.com/YosrBennagra/software-architecture)
- [system-design](https://github.com/YosrBennagra/system-design)
- [application-security](https://github.com/YosrBennagra/application-security)
- [testing-engineering](https://github.com/YosrBennagra/testing-engineering)
- [spring-mastery](https://github.com/YosrBennagra/spring-mastery)
- [api-engineering](https://github.com/YosrBennagra/api-engineering)
