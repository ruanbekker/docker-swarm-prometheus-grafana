export DOMAIN=localhost
export GRAFANA_USER=
export GRAFANA_PASSWORD=
docker stack deploy -c docker-compose.traefik_http.yml mon
docker stack deploy -c docker-compose.dbs.yml mon
docker stack deploy -c docker-compose.yml mon
