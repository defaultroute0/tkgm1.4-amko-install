#use you .kube keys and certs for the amko install so it has right permissions
# as per https://avinetworks.com/docs/amko/1.5/install-configure-amko/
#cp ~/.kube/config gslb-members
kubectl create secret generic gslb-config-secret --from-file gslb-members -n avi-system
helm install  ako/amko  --generate-name --version 1.5.2 -f values.yaml --namespace=avi-system
# do above in each cluster
