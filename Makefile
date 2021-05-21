
REDIS_VERSION ?= 6.2.3
REDIS_EXPORTER_VERSION ?= 1.23.1
IMG_REPO ?= blackholex

docker-build:
	docker build -t $(IMG_REPO)/redis:$(REDIS_VERSION) -f Dockerfile .
	docker build -t $(IMG_REPO)/redis-exporter:$(REDIS_EXPORTER_VERSION) -f Dockerfile.exporter .

docker-push: docker-build
	docker push $(IMG_REPO)/redis:$(REDIS_VERSION)
	docker push $(IMG_REPO)/redis-exporter:$(REDIS_EXPORTER_VERSION)
