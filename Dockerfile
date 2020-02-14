FROM debian:jessie

RUN apt-get update && apt-get install -y --no-install-recommends \
        openjdk-7-jdk ant \
        build-essential libcppunit-dev python-setuptools libtool autoconf python-dev automake

ADD . /arcus-zookeeper
WORKDIR /arcus-zookeeper

RUN ant tar

CMD ["bash"]
