---
title: "Ubuntu Installation Guide"
weight: 2
---

1. A minimum of 8GB storage USB drive.

2. Download an LTS (long term support) version of Ubuntu file from this [link](https://www.ubuntu.com/download/desktop).   

    **Note**: 16.04 or above is recommended as these are the most used versions

3. Download and install Rufus from [link](http://rufus.ie/)

4. Follow the instructions at [link](https://tutorials.ubuntu.com/tutorial/tutorial-create-a-usb-stick-on-windows) to create a bootable USB with Ubuntu

5. **Important:** Print this document before proceeding in case you are working on the same machine you are trying to dual boot.

6. Go to Settings and select Update &amp; Security

    ![Settings](https://i.ibb.co/GcjD1Fc/1-settings.png)
    

7. Click Recovery menu. Under Advanced start-up, click Restart Now

    ![Recovery](https://i.ibb.co/v3wVWDW/2-recovery.png)

8. Select Troubleshoot.

    ![Troubleshoot](https://i.ibb.co/LvTRJVV/3-troubleshoot.png)

9. Choose Advanced Options.

    [Advanced Options](https://i.ibb.co/25pS8s3/4-advanced-startup.png)

10. Select UEFI Firmware Settings. Then click Restart to restart the system and enter UEFI (BIOS).
Note: You need to keep the USB drive with Ubuntu inserted while rebooting.

    ![UEFI](https://i.ibb.co/3M1c0Nj/5-UEFI-settings.jpg)

    **If you don&#39;t have UEFI Firmware Settings option,** you can access boot menu in a different way. Reboot your computer, when it is starting up, press one of several keyboard keys: Esc, F2, F10 or F12, depending on the manufacturer of the computer or motherboard. The specific key to press is usually specified on the computer&#39;s startup screen.

1.  In UEFI boot menu select UEFI: INT13(,0x81).

    ![UEFI Boot](https://i.ibb.co/xssP2Th/6-uefi-boot.jpg)

2.  Choose Try Ubuntu without installing option.

    ![Try Ubuntu without installing](https://i.ibb.co/CsJ9m5F/7-try-ubuntu.jpg)

3.  Launch Install Ubuntu from your desktop.

    ![Ubuntu Desktop](https://i.ibb.co/cvq6Svd/8-ubuntu-desktop.png)

4.  Select check box `Install third party softwares` while istalling the ubuntu.

5.  Follow the Preparing to Install Ubuntu steps. You will be asked to choose language, time zone, user name, etc.

    Choose **Install Ubuntu alongside Windows Boot Manager** to install Ubuntu in dual boot with Windows or choose **Erase disk and install Ubuntu** if you don&#39;t need Windows anymore.

    **Important** : If you don&#39;t have Install Ubuntu alongside Windows Boot Manager option, but there is enough space for Ubuntu installation, you will need to create a partition. You can do this in the installation dialog or quit installation, go back to Windows and create a partition there. Follow these links [How to Create a Partition in Ubuntu During Installation](ubuntu_partition.html) and [How to Create a Partition in Windows](windows_partition.html) to find the detailed instructions.

    ![Installation Type](https://i.ibb.co/mDSMDmk/9-installation-type.png)

6.  Restart the computer

    ![Restart](https://i.ibb.co/p46kR55/10-restart.png)