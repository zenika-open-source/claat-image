IMAGE_NAME = bpetetot/claat
IMAGE_TAG = dev

dev: lint build

dev-arm64: lint build-arm64

dev-armv7: lint build-armv7

lint:
	docker run --rm --interactive --volume "${PWD}":/data --workdir /data hadolint/hadolint:2.7.0-alpine /bin/hadolint --config hadolint.yaml Dockerfile
	@echo "lint succes !"

build:
	docker image build --tag ${IMAGE_NAME}:${IMAGE_TAG} .

build-arm64:
	docker buildx build --platform linux/arm64 --tag ${IMAGE_NAME}:${IMAGE_TAG} .

build-armv7:
	docker buildx build --platform linux/arm/v7 --tag ${IMAGE_NAME}:${IMAGE_TAG} .

