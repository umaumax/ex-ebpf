# ex-ebpf

## for mac
[Run eBPF Programs in Docker using docker-bpf | Hemslo Wang’s Blog]( https://hemslo.io/run-ebpf-programs-in-docker-using-docker-bpf/ )
``` bash
docker volume create --driver local --opt type=debugfs --opt device=debugfs debugfs

docker-compose up -d
docker exec -it ubuntu2404 bash
```

### docker image Files
``` bash
$ tree -L 4 /kernel/
/kernel/
|-- kernel-dev.tar
`-- usr
    `-- src
        |-- linux-headers -> /kernel/usr/src/linux-headers-5.10.47-linuxkit
        `-- linux-headers-5.10.47-linuxkit
            |-- Documentation
            |-- Kbuild
            |-- Kconfig
            |-- Makefile
            |-- Module.symvers
            |-- arch
            |-- block
            |-- certs
            |-- crypto
            |-- drivers
            |-- fs
            |-- include
            |-- init
            |-- ipc
            |-- kernel
            |-- lib
            |-- mm
            |-- net
            |-- samples
            |-- scripts
            |-- security
            |-- sound
            |-- tools
            |-- usr
            `-- virt

26 directories, 5 files
$ tree -L 4 /lib/modules/
/lib/modules/
`-- 5.10.47-linuxkit
    |-- build -> /usr/src/linux-headers-5.10.47-linuxkit
    |-- kernel
    |   |-- arch
    |   |   `-- arm64
    |   |-- crypto
    |   |   |-- blake2b_generic.ko
    |   |   |-- crypto_engine.ko
    |   |   |-- xor.ko
    |   |   `-- xxhash_generic.ko
    |   |-- drivers
    |   |   |-- block
    |   |   |-- char
    |   |   |-- crypto
    |   |   |-- dma
    |   |   |-- gpio
    |   |   |-- i2c
    |   |   |-- md
    |   |   |-- mmc
    |   |   |-- net
    |   |   |-- pwm
    |   |   |-- reset
    |   |   |-- scsi
    |   |   |-- uio
    |   |   |-- usb
    |   |   `-- vhost
    |   |-- fs
    |   |   |-- btrfs
    |   |   |-- ceph
    |   |   |-- lockd
    |   |   |-- nfs
    |   |   |-- nfs_common
    |   |   |-- nfsd
    |   |   `-- ntfs
    |   |-- lib
    |   |   |-- crypto
    |   |   |-- lru_cache.ko
    |   |   |-- raid6
    |   |   `-- zstd
    |   `-- net
    |       |-- ceph
    |       |-- ipv4
    |       |-- ipv6
    |       |-- key
    |       |-- l2tp
    |       |-- mpls
    |       |-- nsh
    |       |-- openvswitch
    |       |-- sched
    |       |-- sctp
    |       |-- sunrpc
    |       |-- vmw_vsock
    |       `-- xfrm
    |-- modules.alias
    |-- modules.alias.bin
    |-- modules.builtin
    |-- modules.builtin.alias.bin
    |-- modules.builtin.bin
    |-- modules.builtin.modinfo
    |-- modules.dep
    |-- modules.dep.bin
    |-- modules.devname
    |-- modules.order
    |-- modules.softdep
    |-- modules.symbols
    `-- modules.symbols.bin

48 directories, 19 files
$ tree /usr/src/
/usr/src/

0 directories, 0 files
```
