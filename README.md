# What it is?

An experiment to run NFS Ganesha VFS module in a Container

# Prerequisites

Make sure `rpcbind` service is started, otherwise `VFS module failed to unregister` error will occur:

# Build and run the Container

```bash 
  # docker build -t ganesha .
  # # exports /home/exports using the following command
  # docker run -ti -v /home/exports/:/exports ganesha
  # # test mount on another terminal
  # mount localhost:/exports /mnt


