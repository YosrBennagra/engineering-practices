# Kubernetes Core Model

## Wall Note / A4

Kubernetes is reconciliation: desired state is stored; controllers drive observed state toward it.

Deployment → ReplicaSet → Pod

Service → stable endpoint → selected Pods

Ingress/Gateway → external routing

ConfigMap/Secret → runtime config

PVC → persistent-storage request

A Pod is a scheduling unit, not a VM.

## Detailed Notes

API server is the control-plane interface. Controllers reconcile. Scheduler chooses nodes. Kubelet runs assigned Pods.

Use Deployments for replaceable stateless workloads. StatefulSets add stable identity/order semantics where required.

Services select Pods by labels. A Service existing does not imply ready endpoints.

ConfigMaps are non-secret config. Kubernetes Secrets are not magically secure: base64 is encoding, not encryption. Protect API access, RBAC, etcd and secret delivery.

Container filesystems are ephemeral. PVCs request durable storage. Understand access modes, topology and application consistency before calling storage highly available.

## Practical Example

See [examples/kubernetes/app.yaml](../examples/kubernetes/app.yaml).

## Exercises / Senior Questions

1. Deployment: 5 desired, 5 current, 0 available. What can cause this?
2. Why are repeated kubectl exec fixes operational debt?
3. Why can a Service have no endpoints while Pods exist?
4. Compare Deployment and StatefulSet.

## Related / Prerequisites

- [system-design](https://github.com/YosrBennagra/system-design)
- [application-security](https://github.com/YosrBennagra/application-security)
