REPO_NAME:=honeytrap15/kubectl-kustomize
KUBECTL_VERSION:=1.9.3
KUSTOMIZE_DOWNLOAD_URL:=https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv4.0.1/kustomize_v4.0.1_linux_amd64.tar.gz
TAG:=latest

build:
	docker build . -t $(REPO_NAME) \
		--build-arg KUBECTL_VERSION=$(KUBECTL_VERSION) \
		--build-arg KUSTOMIZE_DOWNLOAD_URL=$(KUSTOMIZE_DOWNLOAD_URL)

push:
	docker push $(REPO_NAME):$(TAG)
