FROM debian:jessie

RUN apt update
RUN apt install -y tar wget ed make g++ pkg-config libpam0g-dev libsasl2-dev \
	autotools-dev libltdl-dev libnetfilter-conntrack-dev nettle-dev \
	libgnutls28-dev libexpat1-dev libxml2-dev libcppunit-dev libkrb5-dev \
	comerr-dev libcap2-dev automake libssl-dev tree

ADD deps /tmp/
RUN dpkg -i /tmp/*.deb
ADD build.sh /tmp/

RUN cd /opt && wget http://www.squid-cache.org/Versions/v3/3.5/squid-3.5.24.tar.gz && \
	tar xf squid-*.tar.gz && \
	cd squid-* && /tmp/build.sh

CMD while 1 ; do sleep 5 ; done
