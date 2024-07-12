#!/bin/bash

curl -SsLf "https://downloads.mongodb.com/compass/mongosh-2.2.12-linux-${OS_ARCH}.tgz" -O
tar -zxvf "mongosh-2.2.12-linux-${OS_ARCH}.tgz" -C /opt/bitnami/mongodb --strip-components=1 --no-same-owner
rm -rf mongosh-2.2.12-linux-"${OS_ARCH}".tgz{,.sha256}

