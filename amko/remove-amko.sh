helm uninstall $(helm list -n avi-system -q | grep amko) -n avi-system
