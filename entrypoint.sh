#!/bin/bash
/usr/sbin/rpcbind -f
/usr/bin/ganesha.nfsd -F -f /vfs.conf
