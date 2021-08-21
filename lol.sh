#! /bin/bash

# Assumes that you tag versions with the version number (e.g., "1.1")
# and then the build number is that plus the number of commits since
# the tag (e.g., "1.1.17")

DESCRIBE=`git describe --tags --always`

# # increment the build number (ie 115 to 116)
# VERSION=`echo $DESCRIBE | awk '{split($0,a,"-"); print a[1]}'`
# BUILD=`echo $DESCRIBE | awk '{split($0,a,"-"); print a[2]}'`
# PATCH=`echo $DESCRIBE | awk '{split($0,a,"-"); print a[3]}'`

# if [[ "${DESCRIBE}" =~ ^[A-Fa-f0-9]+$ ]]; then
#     VERSION="0.0.0"
#     BUILD=`git rev-list HEAD --count`
#     PATCH=${DESCRIBE}
# fi

# if [ "${BUILD}" = "" ]; then
#     BUILD='0'
# fi

# if [ "${BUILD}" = "" ]; then
#     PATCH=$DESCRIBE
# fi


# echo ${VERSION}+build.${BUILD}.${PATCH}
echo $DESCRIBE
echo $DESCRIBE | sed 's/^.*[^0-9]\([0-9]*\.[0-9]*\.[0-9]*\).*$/\1/'