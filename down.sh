#!/bin/bash
docker compose down
for service in postgres mysql redis; do
  docker compose -f docker-compose.$service.yml -p $service down
done
