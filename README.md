# OpenAirInterface on Kubernetes(OAI-K8s)
```bash=
export KUBECONFIG=~/.kube/config.oai

kubectl label node oai-k8s-3 labServer=334

kubectl apply -f ./oai-deployments.yaml
```
