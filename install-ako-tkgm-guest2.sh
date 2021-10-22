kubectl create ns avi-system
helm install  ako/ako  --generate-name --version 1.5.1 -f ./values-tkgm-guest2.yaml --namespace=avi-system
