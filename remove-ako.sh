kubectl patch configmap/avi-k8s-config -n avi-system --type merge -p '{"data":{"deleteConfig":"true"}}'
helm delete $(helm list -n avi-system -q) -n avi-system
kubectl delete ns avi-system
