# Linux, Shell, Processes & Delivery Git

## Wall Note / A4

A process is executable state plus virtual memory, file descriptors, credentials and kernel-managed resources. A container is isolated processes, not a tiny VM.

Normal shutdown starts with SIGTERM. Stop accepting work, drain, release resources and exit before SIGKILL.

For delivery, commits are immutable snapshots. Build from a commit SHA and promote the same artifact.

## Detailed Notes

Threads share a process address space. File descriptors reference sockets, files and pipes. Typical production failures map to OS resources: file-descriptor exhaustion, memory pressure, CPU throttling, disk/inode exhaustion, blocked I/O or zombie processes.

Troubleshoot symptoms before restarting. For latency, check CPU/runnable queue, I/O wait, locks, memory/GC and downstream dependencies.

Production shell should be explicit, quoted and fail-fast:

~~~bash
set -Eeuo pipefail
trap 'echo "failed at line $LINENO" >&2' ERR
~~~

Shell is excellent for command orchestration; use a general-purpose language when complex state and data structures dominate.

For Git, know commit, branch, tag and merge semantics. A branch is movable; the SHA identifies source. Build metadata should tie source SHA to pipeline identity and artifact digest. Rollback normally redeploys a previously verified immutable artifact.

## Practical Example

~~~bash
revision="$(git rev-parse HEAD)"
printf 'SOURCE_REVISION=%s\n' "$revision" > build-metadata.env
~~~

Carry that revision into image labels, deployment metadata and diagnostics.

## Exercises / Senior Questions

1. A pod receives SIGTERM but drops requests. Trace LB, readiness, shutdown hooks and grace period.
2. Why is rebuilding separately in staging and production weaker than artifact promotion?
3. Diagnose "Too many open files" without immediately raising limits.
4. When is rebasing a shared release branch dangerous?

## Related / Prerequisites

- [computer-science-fundamentals](https://github.com/YosrBennagra/computer-science-fundamentals)
- [testing-engineering](https://github.com/YosrBennagra/testing-engineering)
