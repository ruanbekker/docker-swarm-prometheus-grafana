# docker-prometheus-grafana
Prometheus, Grafana, Node Exporter, cAdvisor Stack for Docker Swarm

## Services included:

- Traefik
- MySQL
- Grafana
- Node Exporter
- Blackbox Exporter
- MySQL Exporter
- Prometheus
- Grafana

## Usage

Get the sources:

```
git clone https://github.com/ruanbekker/docker-prometheus-grafana
cd docker-prometheus-grafana
```

Deploy the stack:

```
docker stack deploy -c docker-compose.traefik_http.yml mon
docker stack deploy -c docker-compose.dbs.yml mon
docker stack deploy -c docker-compose.yml mon
```

Set your hosts file for traefik
