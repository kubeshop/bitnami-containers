#!/bin/bash

# Mapping OS_ARCH to ALT_OS_ARCH
case $OS_ARCH in
    arm64)
        ALT_OS_ARCH="arm64"
        ;;
    amd64)
        ALT_OS_ARCH="x64"
        ;;
    *)
        echo "Error: Unsupported OS_ARCH value '$OS_ARCH'"
        exit 1
        ;;
esac

curl -SsLf "https://downloads.mongodb.com/compass/mongosh-2.2.12-linux-${ALT_OS_ARCH}.tgz" -O
tar -zxvf "mongosh-2.2.12-linux-${ALT_OS_ARCH}.tgz" -C /opt/bitnami/mongodb --strip-components=1 --no-same-owner
rm -rf mongosh-2.2.12-linux-"${ALT_OS_ARCH}".tgz{,.sha256}
