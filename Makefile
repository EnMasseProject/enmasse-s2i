
IMAGE_NAME = s2i-java-builder

build:
	docker build -t $(IMAGE_NAME) .
