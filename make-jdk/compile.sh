#!/bin/bash
#

export OBF_PROJECT_NAME=m-openjdk7
TAG_FILTER=jdk7

#
# Safe Environment
#
export LC_ALL=C
export LANG=C

#
# Prepare Drop DIR
#
if [ -z $OBF_DROP_DIR ]; then
  export OBF_DROP_DIR=`pwd`/drop-dir
fi

#
# Provide Main Variables to Scripts
#
if [ -z "$OBF_BUILD_PATH" ]; then
  export OBF_BUILD_PATH=`pwd`/make-jdk
fi

if [ -z "$OBF_SOURCES_PATH" ]; then
  export OBF_SOURCES_PATH=`pwd`/$OBF_PROJECT_NAME
  mkdir -p `pwd`/sources
fi

if [ -z "$OBF_WORKSPACE_PATH" ]; then
  export OBF_WORKSPACE_PATH=`pwd`
fi

pushd $OBF_SOURCES_PATH >>/dev/null

popd >>/dev/null

$OBF_BUILD_PATH/jenkins-job.sh
