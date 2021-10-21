kubectl create ns avi-system
helm install  ako/ako  --generate-name --version 1.5.1 -f ./values.yaml --namespace=avi-system
