helm uninstall $(helm list -n avi-system -q | grep amko)
