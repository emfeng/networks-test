#!/bin/bash
for service in postgres mysql redis; do
  docker compose -f docker-compose.$service.yml -p $service up -d
done

docker compose up -d