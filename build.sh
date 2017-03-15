#! /bin/bash

./bootstrap.sh
./configure --prefix=`pwd`/build \
    --enable-inline \
    --disable-arch-native \
    --enable-async-io=8 \
    --enable-storeio="ufs,aufs,diskd,rock" \
    --enable-removal-policies="lru,heap" \
    --enable-delay-pools \
    --enable-cache-digests \
    --enable-icap-client \
    --enable-follow-x-forwarded-for \
    --enable-auth-basic="DB,fake,getpwnam,NCSA,NIS,PAM,POP3,RADIUS,SASL,SMB" \
    --enable-auth-digest="file" \
    --enable-auth-negotiate="wrapper" \
    --enable-auth-ntlm="fake,smb_lm" \
    --enable-external-acl-helpers="file_userip,unix_group,wbinfo_group" \
    --enable-url-rewrite-helpers="fake" \
    --enable-eui \
    --enable-esi \
    --enable-icmp \
    --enable-zph-qos \
    --enable-ecap \
    --enable-ssl-crtd \
    --enable-linux-netfilter \
    --disable-translation \
    --with-swapdir=/var/spool/squid \
    --with-logdir=/var/log/squid \
    --with-pidfile=/var/run/squid.pid \
    --with-filedescriptors=65536 \
    --with-large-files \
    --with-default-user=`whoami`\
    --with-openssl
make
make install
