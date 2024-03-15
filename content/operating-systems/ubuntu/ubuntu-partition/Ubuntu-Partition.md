---
title: "Creating partition on ubuntu during installation"
weight: 2
---


1. Select Something else in installation dialog

    ![Something else](https://i.ibb.co/xYtkxtP/1-something-else.png)

2. You will see your disk as `/dev/sda` or `/dev/mapper/pdc_*`
    Click "New Partition Table..." You will see that you have free space on your disk now:
    ![New Partition Table](https://i.ibb.co/S3tvc67/2-new-partition-table.png)

3. (Recommended) Create partition for swap. Swap is the partition for keeping unneeded memory pages, like Windows swap. Also it can be used for hibernation.
    - Select free space and click `+`
    - Set parameters like on the picture below:

    ![Swap](https://i.ibb.co/CtMBCvv/3-swap.png)

    Notice that you should set swap size more than you have physical memory in order to use hibernation. Also, you can place it in the end of disk, but thus it will be slow.

4. Create partition for `/` (root fs). This is the filesystem that contains your kernel, boot files, system files, command-line utilities, libraries, system-wide configuration files and logs.
    - Select free space and click +
    - Set parameters like on the picture below:

    ![Root FS](https://i.ibb.co/2YZGmB8/4-root.png)

    10 – 20 GiB should be enough

5. Create partition for `/home`. This is the filesystem for your user's files: documents, images, music and videos. It's much more like Users folder in Windows.

    You can do this just like in step 4 and even choose other fs type (though I recommend use ext4 instead of reiserfs. Simply, the first is much more flexible and the second is quicker)

6. (Optional) Create separate partitions for `/boot`, `/tmp` and `/var`. Set their size according to your needs:
    - `/boot` should be 100 – 500 MiB
    - `/var` and `/tmp` should be > 5 GiB

7. If you doubt about which device for boot loader installation to choose, leave it default. It would be set by installer. But sometimes it does mistakes. Let me guide you how to deal with it:

    - If you use only one hard disk, select or leave `/dev/sda` intact.
    - If you use more than one hard disk with no RAID, select the one from which your system does boot. You can also select other disk and set BIOS to boot from it.
    - If you have RAID from which your system starts, it will be `/dev/mapper/...`
    **Be sure that you select entire disk, not a single partition!**

8. After all, you should see your disk like this:

    ![Install](https://i.ibb.co/Tqkn2kk/5-install.png)

    You can now click `Install Now` and proceed to the installation.
