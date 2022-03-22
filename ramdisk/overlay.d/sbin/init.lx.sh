#!/system/bin/sh
mount -t tmpfs -o uid=0,gid=0,mode=0755 cgroup /sys/fs/cgroup
cd /sys/fs/cgroup/
mkdir -p cpu cpuacct blkio memory devices pids
mount -n -t cgroup -o cpu cgroup cpu
mount -n -t cgroup -o  cpuacct cgroup cpuacct
mount -n -t cgroup -o  blkio cgroup blkio
mount -n -t cgroup -o  memory cgroup memory
mount -n -t cgroup -o  devices cgroup devices
mount -n -t cgroup -o  pids cgroup pids
