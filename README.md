This is a branch off of ZooKeeper release 3.5.9.  We have made some minor
changes to the C client library (src/c).  So, we package that and distribute
it along with arcus-memcached and arcus-c-client.  They rely on the modified library.

Github project page:
https://github.com/naver/arcus

## Build C library on Linux

dependency requirements:

    automake 1.12 or higher version // for using serial-tests option (https://issues.apache.org/jira/browse/ZOOKEEPER-1893)
    autoconf 2.59 or higher version
    cppunit 1.11 or higher version

In the top directory, run the following to generate necessary headers and
scripts.  Then wrap the whole C library directory in a tarball and distribute
that file.

    ant compile_jute
    cd zookeeper-client/zookeeper-client-c
    autoreconf -if

Make sure to install ant, cppunit, and cppunit-devel before running the above.
`autoreconf` generates configure script.

    ./configure --prefix=/path/to/arcus-directory
    make
    make install

## Build Server and Java library on Linux

In the top directory, run the following to build.

    mvn clean install

If you are going to compile with Java 1.8, you should use a recent release at u211 or above.

## Build Troubleshooting

[build-faq](https://github.com/naver/arcus/blob/master/docs/build-faq.md) may help you fix the build problems.

## Arcus Contributors

The following people at NAVER have contributed to the Arcus specific
modifications to the C client library.

Hoonmin Kim (harebox) <harebox@gmail.com>
HyongYoub Kim
