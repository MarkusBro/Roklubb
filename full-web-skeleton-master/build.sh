#!/bin/bash

# Build with maven
docker run --rm -it --name mavenbuild -v maven-repo:/root/.m2 -v $(pwd):/usr/src/mymaven -w /usr/src/mymaven maven mvn clean install

# Copy .war to payara:
docker cp target/Skeleton-1.0.war payara:/opt/payara/deployments
docker cp src/config.properties payara:/opt/payara/


# Redeploy war
docker exec -it payara asadmin --user=admin --passwordFile /opt/payara/passwordFile undeploy Skeleton-1.0
docker exec -it payara asadmin --user=admin --passwordFile /opt/payara/passwordFile deploy deployments/Skeleton-1.0.war

