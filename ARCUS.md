About
----

This is a branch off of ZooKeeper release 3.4.5.  We have made some minor 
changes to the C client library (src/c).  So, we package that and distribute
it along with the Arcus memcached server and the Arcus C client.  They rely
on the modified library.

Use this branch: arcus-3.4.5

In the top directory, run the following to generate necessary headers and
scripts.  Then wrap the whole C library directory in a tarball and distribute
that file.

    ant compile_jute
    cd src/c
    autoreconf -if

Make sure to install ant, cppunit, and cppunit-devel before running the above.
