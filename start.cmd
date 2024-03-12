REM Run the docker compose command to create the environment

docker compose up -d

REM Wait 130 seconds for the kibana container to start

timeout /t 130 /nobreak

REM Deletion of container curl no longer needed

docker compose down curl
docker rmi images docker-nginx-filebeat-elastic-kibana-grafana-main-curl
docker-compose restart grafana
