#!/bin/bash

url="http://127.0.0.1:5180/login"
data='{"username":"admin","password":"password"}'
content_type="Content-Type: application/json"

for i in {1..10000}
do
  curl -X POST -d "$data" -H "$content_type" "$url" &
done

wait
