This is a branch off of ZooKeeper release 3.5.9.  We have made some minor
changes to the C client library (src/c).  So, we package that and distribute
it along with arcus-memcached and arcus-c-client.  They rely on the modified library.

Github project page:
https://github.com/naver/arcus

## Build Server and Java library on Linux

In the top directory, run the following to build.

    mvn clean install


If you are going to compile with Java 1.8, you should use a recent release at JDK 8u211 or above.

For more detailed installation guide, please refer to the official ZooKeeper documentation:
https://github.com/apache/zookeeper

## Build Troubleshooting

[build-faq](https://github.com/naver/arcus/blob/master/docs/build-faq.md) may help you fix the build problems.

## Arcus Contributors

The following people at NAVER have contributed to the Arcus specific
modifications to the C client library.

Hoonmin Kim (harebox) <harebox@gmail.com>
HyongYoub Kim
