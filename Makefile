NODE_EXPORTER_DOCKER_IMAGE=registry.orus.io/node-exporter:v0.15.2

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

build: build-node-exporter

push: push-node-exporter

build-and-push: build push
