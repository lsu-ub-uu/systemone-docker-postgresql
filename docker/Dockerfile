ARG POSTGRESQL_DOCKER_VERSION
FROM cora-docker-postgresql:${POSTGRESQL_DOCKER_VERSION}

USER root

#RUN mkdir data

COPY storagefiles/ storagefiles/
COPY initdb/*.sh docker-entrypoint-initdb.d/

RUN chmod +rx docker-entrypoint-initdb.d/*.sh && chown -R postgres: storagefiles

RUN ls -la /docker-entrypoint-initdb.d//