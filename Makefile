
.PHONY: build
build:
	CGO_ENABLED=0 go build -ldflags="-w -s" -gcflags "all=-N -l" -o ./bin/mydemo main.go

.PHONY: docker
docker:
	docker build -t docker.io/library/mydemo:latest .

.PHONY: load
load:
	kind load docker-image docker.io/library/mydemo:latest 

.PHONY: deleteCluster
createCluster:
	kind create cluster --kubeconfig ./dev/kubeconfig

.PHONY: deleteCluster
deleteCluster:
	kind delete cluster --kubeconfig ./dev/kubeconfig

debug:
	dlv debug main.go --listen=0.0.0.0:2345 --api-version=2 --output /tmp/__debug_bin --headless --build-flags="-mod=vendor"
