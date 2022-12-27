# build image for arm v7, arm v8 and amd64
build:
	@docker buildx build --push --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag hemantnegi/syslog-sidecar:latest .