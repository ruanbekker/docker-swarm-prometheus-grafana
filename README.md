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
git clone
```

Deploy the stack:

```
docker stack deploy -c docker-compose.traefik_http.yml mon
docker stack deploy -c docker-compose.dbs.yml mon
docker stack deploy -c docker-compose.yml mon
```
