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
```

# Run for Demo

~~~
docker run -d  --name nfs --privileged --net=host -v /exports:/exports -v /e1:/e1 -v /e2:/e2 -v /e3:/e3 -v /e4:/e4 -v /e5:/e5 onedata/nfs-ganesha-docker:nfs4
~~~


