#use you .kube keys and certs for the amko install so it has right permissions
# as per https://avinetworks.com/docs/amko/1.5/install-configure-amko/
#cp ~/.kube/config gslb-members
kubectl create secret generic gslb-config-secret --from-file gslb-members -n avi-system
helm install  ako/amko  --generate-name --version 1.5.2 -f values.yaml --namespace=avi-system
# do above in each cluster



#NOTES:
#1. Get the application URL by running these commands:
#  export POD_NAME=$(kubectl get pods --namespace avi-system -l "app.kubernetes.io/name=amko,app.kubernetes.io/instance=amko-1646873058" -o jsonpath="{.items[0].metadata.name}")
#  echo "Visit http://127.0.0.1:8080 to use your application"
#  kubectl --namespace avi-system port-forward $POD_NAME 8080:80
