# My dictionary 

## CSM Booting
```
Compatibility Support Module

A subsystem within UEFI firmware that provides legacy BIOS 
compatibility, allowing systems designed for legacy BIOS booting
to boot on UEFI firmware.

CSM commonly uses legacy MBR-style booting, although CSM itself is
a firmware compatibility mechanism rather than a partition scheme.
```

## UEFI
```
Unified Extensible Firmware Interface

A modern firmware interface specification that replaces the
traditional BIOS boot environment.

UEFI can boot operating systems directly using UEFI bootloaders,
typically from a GPT-partitioned disk, and provides features such
as Secure Boot and support for large disks.

UEFI also supports disks larger than the traditional MBR-limit
and can provide faster boot and additional firmware-level
security features.
```

## MBR
```
Master Boot Record

A legacy disk partition scheme and boot-sector scheme in which the
partition table and boot code are stored in the first sector of the
disk.

Traditional MBR partitioning supports up to 4 primary partitions
(or 3 primary partitions plus an extended partition) and addresses
disks using 32-bit sector addresses, traditionally limiting usable
disk capacity to about 2 TiB with 512-byte sectors.
```

## GPT
```
GUID Partion Table

Part of the UEFI specification.
A modern partition-table scheme commonly used with UEFI systems 
and designed to succeed the traditional MBR partitioning scheme. 

GPT uses Globally Unique Identifiers (GUIDs) to identify the disk, 
partitions, and partition types. Linux commonly exposes these 
identifiers using UUID terminology. 

At the beginning of a GPT disk there is a Protective Master Boot 
Record (PMBR), which contains a partition-table entry covering the 
GPT disk. Its purpose is primarily to prevent GPT-unaware software 
from treating the disk as unpartitioned or overwriting it. 

The PMBR can also contain boot code, which can be used for BIOS-mode 
booting by bootloaders that support BIOS/GPT booting.
```
