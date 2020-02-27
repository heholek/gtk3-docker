FROM ubuntu:19.10

EXPOSE 8085

RUN apt-get update
RUN apt-get clean
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libgtk-3-dev libcairo2-dev libglib2.0-dev xfce4 nautilus pkg-config
#toilix
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git wget libcurl4

RUN wget http://downloads.dlang.org/releases/2020/dmd_2.090.1-0_amd64.deb
RUN dpkg -i dmd_2.090.1-0_amd64.deb

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install gnome
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install gettext

RUN git clone https://github.com/gnunn1/tilix.git; cd tilix; dub build --build=release; ./install.sh

#useradd -m -g user bash user

ENV GDK_BACKEND broadway
ENV BROADWAY_DISPLAY :5

COPY init.sh /init.sh
CMD ["/init.sh"]
