#!/bin/bash

sudo yum install -y rpm-build wget
mkdir -p "$HOME"/rpmbuild/SOURCES
wget ftp://ftp.unixodbc.org/pub/unixODBC/unixODBC-2.3.4.tar.gz --directory-prefix="$HOME"/rpmbuild/SOURCES
rpmbuild -bb ./unixODBC.spec

ls -l "$HOME"/rpmbuild/RPMS/x86_64
