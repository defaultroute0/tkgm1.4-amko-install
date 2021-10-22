kubectl create secret generic gslb-config-secret --from-file gslb-members -n avi-system
helm install  ako/amko  --generate-name --version 1.5.2 -f values.yaml --namespace=avi-system
