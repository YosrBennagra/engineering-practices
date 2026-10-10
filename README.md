# Engineering Practices

> **Cheat sheet:** [CHEAT-SHEET.md](CHEAT-SHEET.md) (dense one-to-two-page revision sheet to print and keep on the wall)

Practical professional engineering from **fundamental delivery habits → senior/staff engineering judgment**.

This repository is the professional-practices layer of the wider [software-engineer-roadmap](https://github.com/YosrBennagra/software-engineer-roadmap). It focuses on **how strong engineers plan, change, review, communicate, operate and improve software work**. Deep language, architecture, testing, security, platform, observability and system-design material belongs in the dedicated repositories linked below.

## Learning order

1. [SDLC, requirements and decomposition](docs/01-sdlc-requirements.md)
2. [Planning, estimation, prioritization and risk](docs/02-planning-estimation-risk.md)
3. [Incremental and iterative delivery](docs/03-iterative-delivery.md)
4. [Code review, pull requests and integration](docs/04-code-review-prs-integration.md)
5. [Standards, definition of done and durable documentation](docs/05-standards-dod-documentation.md)
6. [RFCs, ADRs and technical decisions](docs/06-rfc-adr-decision-making.md)
7. [Refactoring and technical debt](docs/07-refactoring-technical-debt.md)
8. [Legacy systems, migrations and compatibility](docs/08-legacy-migrations-compatibility.md)
9. [Feature rollout and rollback](docs/09-rollout-rollback.md)
10. [Debugging and problem solving](docs/10-debugging-problem-solving.md)
11. [Production ownership, incidents and postmortems](docs/11-production-incidents-postmortems.md)
12. [Agile flow and cross-functional collaboration](docs/12-agile-cross-functional.md)
13. [Technical communication and feedback](docs/13-technical-communication-feedback.md)
14. [Mentoring and knowledge sharing](docs/14-mentoring-knowledge-sharing.md)
15. [Ownership, maintainability and long-term thinking](docs/15-ownership-maintainability.md)
16. [Senior/staff engineering judgment](docs/16-senior-staff-judgment.md)
17. [Overengineering and unnecessary complexity](docs/17-overengineering-complexity.md)
18. [Engineering effectiveness and continuous improvement](docs/18-engineering-effectiveness.md)
19. [Capstone scenarios and review exercises](practice/capstone-scenarios.md)

## Progress checklist

- [ ] Clarify outcomes, constraints and acceptance boundaries before solutioning.
- [ ] Decompose work into independently valuable, reversible increments.
- [ ] Express estimates as ranges with assumptions and uncertainty.
- [ ] Use risk to drive sequencing, spikes and review depth.
- [ ] Author small, reviewable changes and review for behavior, risk and maintainability.
- [ ] Apply a meaningful Definition of Done instead of “code compiles”.
- [ ] Use RFCs/ADRs when a decision has lasting cost or cross-team impact.
- [ ] Refactor with an explicit safety net and measurable reason.
- [ ] Change legacy systems through seams, stranglers, compatibility and staged migrations.
- [ ] Design rollout, observability and rollback before production exposure.
- [ ] Debug from evidence and competing hypotheses, not random edits.
- [ ] Treat production behavior as part of implementation ownership.
- [ ] Collaborate across product/frontend/backend/QA/platform without ceremony bloat.
- [ ] Communicate decisions, uncertainty and trade-offs precisely.
- [ ] Give actionable engineering feedback and build team capability.
- [ ] Optimize for maintainability and lifecycle cost, not local cleverness.
- [ ] Make senior/staff decisions by managing scope, risk, reversibility and leverage.
- [ ] Detect overengineering early.
- [ ] Improve engineering effectiveness with evidence, not vanity metrics.

## Topic map

| Area | Primary questions |
|---|---|
| Discovery | What problem are we solving? What is in/out? What could invalidate the plan? |
| Planning | What is the smallest safe path? Which uncertainty must be retired first? |
| Delivery | How do we produce useful increments without large-batch risk? |
| Review | How do authors make change intent obvious and reviewers find important risk? |
| Decisions | Which decisions deserve RFC/ADR treatment? What would change the decision? |
| Change | How do we refactor, migrate and deprecate without breaking consumers? |
| Operations | How do we debug and own real production behavior? |
| Collaboration | How do engineers coordinate without ceremony becoming the product? |
| Judgment | How do senior/staff engineers simplify, prioritize and improve the system around the code? |

## Knowledge-system links

- [software-engineer-roadmap](https://github.com/YosrBennagra/software-engineer-roadmap) — master index.
- [computer-science-fundamentals](https://github.com/YosrBennagra/computer-science-fundamentals) — CS foundations.
- [programming-principles](https://github.com/YosrBennagra/programming-principles) — core coding principles and software construction.
- [java-mastery](https://github.com/YosrBennagra/java-mastery) / [spring-mastery](https://github.com/YosrBennagra/spring-mastery) / [angular-mastery](https://github.com/YosrBennagra/angular-mastery) — stack depth.
- [design-patterns](https://github.com/YosrBennagra/design-patterns) — reusable design patterns.
- [software-architecture](https://github.com/YosrBennagra/software-architecture) — architecture depth.
- [system-design](https://github.com/YosrBennagra/system-design) — distributed/system design.
- [testing-engineering](https://github.com/YosrBennagra/testing-engineering) — test strategy and techniques.
- [devops-platform-engineering](https://github.com/YosrBennagra/devops-platform-engineering) — delivery/platform/Kubernetes depth.
- [application-security](https://github.com/YosrBennagra/application-security) — security engineering.
- [observability-reliability](https://github.com/YosrBennagra/observability-reliability) — observability, SLOs and reliability engineering.
- [engineering-toolbox](https://github.com/YosrBennagra/engineering-toolbox) — reusable technical utilities and workflows.

See [scope boundaries](references/scope-boundaries.md) for what belongs here versus elsewhere.

## Repository pattern

Every core topic contains:

1. **Wall Note / A4** — rules and decision triggers.
2. **Detailed Notes** — workflow, reasoning, trade-offs, failure modes and examples.
3. **Practical Scenarios** — realistic engineering situations.
4. **Senior Questions / Review Exercises**.
5. **Related / Prerequisites**.

Templates are in [templates/](templates/).