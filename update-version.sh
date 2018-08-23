#!/bin/bash

FILES=( \
    ubuntu-trusty/vagrant-provision.sh       \
    debian-jessie/vagrant-provision.sh       \
    centos7/vagrant-provision.sh             \
    insecure-registry/vagrant-provision.sh   \
    k8s/vagrant-provision.sh                 \
)

for f in "${FILES[@]}" ; do
    echo $f

    sed -i -e 's/COMPOSE_VERSION=.*/COMPOSE_VERSION=1.22.0/g'   $f
    sed -i -e 's/MACHINE_VERSION=.*/MACHINE_VERSION=v0.14.0/g'  $f

    sed -i -e 's/DOCKVIZ_VERSION=.*/DOCKVIZ_VERSION=v0.6.3/g'      $f
    sed -i -e 's/DOCKERGEN_VERSION=.*/DOCKERGEN_VERSION=0.7.4/g'   $f
    sed -i -e 's/DOCKERIZE_VERSION=.*/DOCKERIZE_VERSION=v0.6.1/g'  $f
    sed -i -e 's/CADVISOR_VERSION=.*/CADVISOR_VERSION=0.30.2/g'    $f

    sed -i -e 's/ETCD_VERSION=.*/ETCD_VERSION=v3.3.9/g'               $f
    sed -i -e 's/KUBERNETES_VERSION=.*/KUBERNETES_VERSION=v1.10.7/g'   $f

done
