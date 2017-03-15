=====
About
=====

This is a Docker recipe for an image which is meant to build `squid server
<http://www.squid-cache.org/>`_ from source code on Debian 8 systems.

`Dockerfile` might serve as a documentation for people who want to build
squid from sources.
It might be developers who want to patch squid, or someone else who needs
to enable/dissable some build options, needs the latest squid version
that is not packaged on their system yet, etc.

Usage
=====

Create docker image that will download squid source code and compile it::

    $ docker build -t squid-builds .

Get into container::

    $ docker run -it squid-builds bash

The built files should be in `/opt/squid-x.y.z/build`::

    $ tree /opt/squid-x.y.z/build

    /opt/squid-3.5.24/build/
    |-- bin
    |   |-- purge
    |   `-- squidclient
    |-- etc
    |   |-- cachemgr.conf
    |   |-- cachemgr.conf.default
    |   |-- errorpage.css
    |   |-- errorpage.css.default
    |   |-- mime.conf
    |   |-- mime.conf.default
    |   |-- squid.conf
    |   |-- squid.conf.default
    |   `-- squid.conf.documented
    |-- libexec
    |   |-- basic_db_auth
    |   |-- basic_fake_auth
    |   |-- basic_getpwnam_auth
    |   |-- basic_ncsa_auth
    |-- sbin
    |   `-- squid

.. rubric:: References

.. [#f1] http://wiki.squid-cache.org/SquidFaq/CompilingSquid
