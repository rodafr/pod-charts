run-pod:
	helm template ./my-stupid-app/ -f ./my-stupid-app/values.local.yaml --name-template my-stupid-app | podman kube play -

pod-down:
	podman pod stop my-stupid-app-pod
	podman pod rm my-stupid-app-pod
