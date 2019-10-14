FROM ubuntu:18.04
MAINTAINER prozhou <zhoushengzheng@gmail.com>
RUN apt-get update && \
	apt-get install -y  libappindicator3-1 && \
	apt-get install -y wget && \
	wget https://raw.githubusercontent.com/getlantern/lantern-binaries/master/lantern-installer-64-bit.deb -O lantern-installer-64-bit.deb && \
	dpkg -i lantern-installer-64-bit.deb
EXPOSE 8787
EXPOSE 16823
ENTRYPOINT [ "/usr/bin/lantern", "-headless", "-addr", "0.0.0.0:8787","-uiaddr","0.0.0.0:16823" ]
#ENTRYPOINT [ "/usr/bin/lantern", "--help" ]
