# Repository rebuild audit

## Previous state

The repository previously contained an Angular coursework application centered on invoices, suppliers and products, plus Angular CLI/package/editor configuration. It was unrelated to DevOps and platform engineering.

## Decision

The old application is removed from the **current tree**, while all historical commits remain available. No history rewrite, fake migration or artificial commit history was used. Nothing was retained because the prior code did not provide a strong container, CI/CD, Kubernetes, infrastructure, reliability or platform-engineering example.

## Canonical repository note

GitHub currently redirects the historical repository URL named devops-platform-engineering to **YosrBennagra/engineering-practices**. No separate canonical devops-platform-engineering repository exists, so this rebuild treats that canonical repository as the requested track.

## Replacement standard

Production-oriented, dense, cross-linked, and layered from foundations through senior/expert judgment.
