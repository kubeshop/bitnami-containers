#!/bin/bash

# Mapping OS_ARCH to ALT_OS_ARCH
case $OS_ARCH in
    arm64)
        ALT_OS_ARCH="aarch64"
        ;;
    amd64)
        ALT_OS_ARCH="x86_64"
        ;;
    *)
        echo "Error: Unsupported OS_ARCH value '$OS_ARCH'"
        exit 1
        ;;
esac

curl -SsLf "https://fastdl.mongodb.org/linux/mongodb-linux-${ALT_OS_ARCH}-ubuntu2204-7.0.12.tgz" -O
curl -SsLf "https://fastdl.mongodb.org/linux/mongodb-linux-${ALT_OS_ARCH}-ubuntu2204-7.0.12.tgz.sha256" -O
sha256sum -c "mongodb-linux-${ALT_OS_ARCH}-ubuntu2204-7.0.12.tgz.sha256"
tar -zxvf "mongodb-linux-${ALT_OS_ARCH}-ubuntu2204-7.0.12.tgz" -C /opt/bitnami/mongodb --strip-components=1 --no-same-owner
rm -rf mongodb-linux-"${ALT_OS_ARCH}"-ubuntu2204-7.0.12.tgz{,.sha256}
