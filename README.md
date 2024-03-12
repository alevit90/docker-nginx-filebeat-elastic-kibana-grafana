# Docker-Nginx-Filebeat-Elastic-Kibana-Grafana

This repository creates a multi container environment where you can see nginx access.log on grafana

# How To Use

Through Docker Compose, 6 containers will be run:

**Nginx**: An open source web server that will write logs in Json format

**Filebeat**: The agent that will be responsible for collecting logs and sending them to elasticsearch

**Elastic Search**: The data search and analysis engine

**Kibana**: The interface for viewing logs arriving at elasticsearch

**Grafana**: For viewing grafana logs by reading them through the index on elasticsearch

**Curl**: A temporary container that will be used to make calls on nginx via curl and for creating the nginx index. At the end of its tasks the container and image will be removed

To run the containers launch the following file:

```shell
start.cmd
```

Once the script has been launched, it will be necessary to wait for kibana to start completely. The interface can be reached via the link:

```shell
http://localhost:5601
```

Logs will be present trami the kibana discover. It will take at least 2 minutes:

```shell
http://localhost:5601/app/discover#/
```

Once it goes up, the curl container will take care of making a series of calls to nginx to general the log and create the index on elasticsearch via an -XPOST curl. 
Through the start.cmd script, the curl container will be removed to keep the environment clean. As soon as the cmd window is closed, you can access grafana to go to the nginx logs  

```shell
http://localhost:3000
```
Log in to the grafana console with the default credentials admin:admin and create a new password

Verify the creation of the elasticsearch datasource

```shell
http://localhost:3000/connections/datasources
```
and click on the explore button on the right to view the data


# Note
The following project was developed using docker desktop version 4.28 

The version of elasticsearch is 8.12

The version of kibana is 8.12

The version of filebeat is 8.0.0

The version of nginx and grafana are latest
