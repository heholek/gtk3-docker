FROM ubuntu:19.10

EXPOSE 8085

RUN apt-get update
RUN apt-get clean
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libgtk-3-dev libcairo2-dev libglib2.0-dev pkg-config
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git wget

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install gnome

ENV GDK_BACKEND broadway
ENV BROADWAY_DISPLAY :5

COPY init.sh /init.sh
CMD ["/init.sh"]
