build:
	docker image build --tag bpetetot/claat:dev .

build-arm64:
	docker buildx build --platform linux/arm64 --tag bpetetot/claat:dev .

build-armv7:
	docker buildx build --platform linux/arm/v7 --tag bpetetot/claat:dev .

