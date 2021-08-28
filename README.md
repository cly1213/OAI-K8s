# OpenAirInterface on Kubernetes(OAI-K8s)
```bash=
rke up

cp kube_config_cluster.yml ~/.kube/config.oai

export KUBECONFIG=~/.kube/config.oai

kubectl label node oai-k8s-3 labServer=334

kubectl apply -f ./oai-deployments.yaml
```

## Work Logs
[Setup local K8S to manage the OAI deployment](https://hackmd.io/JsmzQpJhRq6lfseNiyvGOw)

[k8s helm chart](https://hackmd.io/uzzHUXNrTdmHPfoMGYYwHw)
