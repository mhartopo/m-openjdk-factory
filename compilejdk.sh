#!/bin/bash

export JAVA_HOME=/home/muhtar/programs/jdk1.6.0_45

XBUILD=true ./make-jdk/compile.sh

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

echo "build finish"
