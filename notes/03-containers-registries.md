# Containers, Docker, Registries & Image Lifecycle

## Wall Note / A4

Image = immutable filesystem/config layers. Container = processes started from an image plus runtime isolation and writable state.

Production goals: small attack surface, non-root, deterministic build, pinned inputs, no secrets, correct signal handling and traceable provenance.

Tags are mutable names. Digests identify immutable content.

## Detailed Notes

Containers use namespaces for visibility boundaries and cgroups for resource accounting/control while sharing the host kernel.

Use multi-stage builds so compilers/package managers do not automatically enter runtime images. Put stable dependency steps before frequently changing source for better cache reuse.

PID 1 and signals matter; shell wrappers can break graceful termination.

Treat the container filesystem as disposable. Persist only through intentional storage/external services.

Image lifecycle:
identified source → build/test → scan → SBOM/provenance → registry digest → promote same digest → deploy → rollback retention → policy-based garbage collection.

Avoid privileged containers and Docker-socket mounts unless explicitly justified.

## Practical Example

See [examples/container/Dockerfile](../examples/container/Dockerfile).

~~~bash
docker image inspect myapp:1.4.2 --format '{{json .RepoDigests}}'
~~~

## Exercises / Senior Questions

1. Explain layer cache behavior and Dockerfile ordering.
2. When is distroless useful, and what debugging trade-off follows?
3. Why can a mounted Docker socket imply host-level control?
4. Design image retention that supports rollback without unbounded storage.

## Related / Prerequisites

- [application-security](https://github.com/YosrBennagra/application-security)
