kubectl delete secret gslb-config-secret -n avi-system
helm uninstall $(helm list -n avi-system -q | grep amko) -n avi-system
