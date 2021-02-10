FROM docker.io/ibmcom/websphere-liberty:20.0.0.5-full-java11-openj9-ubi
USER root
CMD mkdir -p /my-special-folder/
COPY Dockerfile /my-special-folder/
USER 1000790000
COPY target/simple-stuff.war /config/dropins/
COPY config/server.xml /config/
COPY config/server.env /config/
