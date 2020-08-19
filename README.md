This is a branch off of ZooKeeper release 3.5.7.  We have made some minor 
changes to the C client library (src/c).  So, we package that and distribute
it along with arcus-memcached and arcus-c-client.  They rely on the modified library.

Github project page:
https://github.com/naver/arcus

## Build C library on Linux

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

## Arcus Contributors

The following people at NAVER have contributed to the Arcus specific
modifications to the C client library.

Hoonmin Kim (harebox) <harebox@gmail.com>  
HyongYoub Kim
