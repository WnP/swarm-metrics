# Docker swarm metrics

This repository contain all you need to setup metrics on your swarm cluster.

It's based on [swarmprom](https://github.com/stefanprodan/swarmprom) and is
mostly a copy of this project, you can still find some swarmprom references,
but this one use [Træfik](https://traefik.io/) in place of caddy as reverse
proxy.

Also this image use docker config feature more than the original one.

This version also doesn't offer Weave support.

# Features

- [prometheus](https://prometheus.io/) (metrics database)
- [grafana](https://grafana.com/) (visualize metrics)
- [node-exporter](https://github.com/prometheus/node_exporter) (host metrics
  collector)
- [cadvisor](https://github.com/google/cadvisor) (containers metrics collector)
- [dockerd-exporter](https://docs.docker.com/config/thirdparty/prometheus/)
  (Docker daemon metrics collector, requires Docker experimental metrics-addr
  to be enabled)
- [alertmanager](https://prometheus.io/docs/alerting/alertmanager/) (alerts
  dispatcher)
- [unsee](https://github.com/cloudflare/unsee) (alert manager dashboard)
- [træfik](https://traefik.io/) (reverse proxy and basic auth provider for
  prometheus, alertmanager and unsee)

# Usage

Using portainer interface you should be able to clone this project and use
`docker-compose.yml` file as stack file.
