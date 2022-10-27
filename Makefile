IMAGE_VERSION = v0.2
REGISTRY = docker.io/gaoxin2020
IMAGE = ${REGISTRY}/quantum-device:${IMAGE_VERSION}

.PHONY: build deploy

build:
	CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o build/quantum cmd/server/app.go

buildImage:
	docker build -t ${IMAGE} .

kindLoad:
	kind load docker-image ${IMAGE}

pushImage:
	docker push ${IMAGE}

deploy:
	helm install quantum deploy/helm/quantum

upgrade:
	helm upgrade quantum deploy/helm/quantum

dry-run:
	helm install quantum deploy/helm/quantum --dry-run