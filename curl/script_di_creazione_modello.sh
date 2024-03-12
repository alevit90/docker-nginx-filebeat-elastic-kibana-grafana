#!/bin/bash

# Simulation of 10 requests 

curl -k http://nginx:80
curl -k http://nginx:80
curl -k http://nginx:80
curl -k http://nginx:80
curl -k http://nginx:80
curl -k http://nginx:80
curl -k http://nginx:80
curl -k http://nginx:80
curl -k http://nginx:80
curl -k http://nginx:80

# Waiting for 130 seconds to wait for the kibana container to be operational

sleep 110

# Running the curl to create the index pattern

curl -vvv --ipv4 -X POST "kibana:5601/api/saved_objects/index-pattern/nginx" \
-H 'kbn-xsrf: true' \
-H 'Content-Type: application/json' \
-d '{
  "attributes": {
    "title": "nginx-*"
  }
}'
