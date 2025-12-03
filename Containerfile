FROM ubuntu:noble

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl git openjdk-21-jdk zsh && \
    apt-get clean

ENV MINECRAFT_VERSION=1.20.1

ENV FORGE_VERSION=47.4.0

RUN curl -sLo /opt/forge-installer.jar https://maven.minecraftforge.net/net/minecraftforge/forge/$MINECRAFT_VERSION-$FORGE_VERSION/forge-$MINECRAFT_VERSION-$FORGE_VERSION-installer.jar

RUN useradd -m minecraft

USER minecraft

WORKDIR /home/minecraft

RUN java -jar /opt/forge-installer.jar --installServer server

RUN sed -i 's/^java/exec java/' server/run.sh

ADD --chown=minecraft server server

ENV PATH="$PATH:/home/minecraft/.local/bin"

COPY ./bin/ .local/bin/

WORKDIR server

CMD exec start ./run.sh
