# docker-nginx-filebeat-elastic-kibana-grafana

This repository creates an environment where you can see nginx's access.log on grafana

# How To Use

Through Docker Compose, 6 containers will be run:

**Nginx**: An open source web server that will write logs in Json format

**Filebeat**: The agent that will be responsible for collecting logs and sending them to elasticsearch

**Elastic Search**: The data search and analysis engine

**Kibana**: The interface for viewing logs arriving at elasticsearch

**Graphana**: For viewing graphana logs by reading them through the index on elasticsearch

**Curl**: A temporary container that will be used to make calls on nginx via curl and for creating the nginx index. At the end of its tasks the container and image will be removed

