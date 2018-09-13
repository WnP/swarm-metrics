PROMETHEUS_DOCKER_IMAGE=registry.orus.io/prometheus:v2.2.0-rc.0
NODE_EXPORTER_DOCKER_IMAGE=registry.orus.io/node-exporter:v0.15.2

build-prometheus:
	echo "    \033[0;32mINFO:\033[0m Creating prometheus image" \
	# ----------------------------------------
	# ----------------------------------------
	docker build -t $(PROMETHEUS_DOCKER_IMAGE) -f ./prometheus/Dockerfile ./prometheus

push-prometheus:
	echo "    \033[0;32mINFO:\033[0m Pushing prometheus image" \
	# ----------------------------------------
	# ----------------------------------------
	docker push $(PROMETHEUS_DOCKER_IMAGE)

build-node-exporter:
	echo "    \033[0;32mINFO:\033[0m Creating node-exporter image" \
	# ----------------------------------------
	# ----------------------------------------
	docker build -t $(NODE_EXPORTER_DOCKER_IMAGE) -f ./node-exporter/Dockerfile ./node-exporter

push-node-exporter:
	echo "    \033[0;32mINFO:\033[0m Pushing node-exporter image" \
	# ----------------------------------------
	# ----------------------------------------
	docker push $(NODE_EXPORTER_DOCKER_IMAGE)

build: build-prometheus build-node-exporter

push: push-prometheus push-node-exporter

build-and-push: build push
