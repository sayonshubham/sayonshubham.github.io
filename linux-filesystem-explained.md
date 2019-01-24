The Filesystem Hierarchy Standard (FHS) defines the structure of file systems in Unix/Linux, like operating systems.

**Remember**
In Linux everything is a file

/: The Root Directory - The Primary hirearchy root directory which contains all other directories and files.

/bin: Essential User Binaries - contains definitions of all the basic commands commonly used by the user. for eg: ls,cp,cat,grep.

/boot: Static Boot Files- contains boot loader related files that are needed during the startup of the system; such as Kernal intrid(Initial RAM Disk image)

/dev: Device Files- conatins the files for various devices on the system, like Hard Drives,RAM,CPU,cdrom

/etc: Configuration Files- contains the configuration files which affect the system when user is modifying anything. Also has service scripts like (start,stop,enable,shutdown,status)

/home: User's Home Directories- This is where users save their personal files.

/lib: Essential Shared Libraries- conatins important dynamic libraries

/media: Removable Media- Temporary mount directory for external removable media (CDs,DVDs).

/mnt: Temporary Mount Points- Teporary mount directory where we can mount filesystems temporarily.

Point to Remember

/media is mount point for removable media. In other words, where system mounts removable media. This directory contains sub-directories used for mounting removable media such as CD-ROMs, floppy disks, etc.

/mnt is for temporary mounting. In other words, where user can mount things. This directory is generally used for mounting filesytems temporarily when needed.

/opt: Optional Packages - Third party softwares which are not available in official repository are installed in this folder.

/proc: Kernel & Process Files – A virtual filesystem that contains information about running process (/proc/(pid), kernel & system resources (/proc/uptime & /proc/vmstat).

/root: Root Home Directory –it is the root user’s home directory.

/srv: Service Data - Site-specific data served by this system, such as data and scripts for web servers, data offered by FTP servers, and repositories for version control systems.

/sys: virtual filesystem or pseudo file system - information about devices, drivers and kernal features.

POINT TO REMEMBER
The /sys filesystem (sysfs) contains files that provide information about devices: whether it's powered on, the vendor name and model, what bus the device is plugged into, etc. It's of interest to applications that manage devices.

The /dev filesystem contains files that allow programs to access the devices themselves: write data to a serial port, read a hard disk, etc. It's of interest to applications that access devices.

/tmp: Temporary Directory - Contains temporary files (see also /var/tmp). Often not preserved between system reboots, and may be severely size restricted.

/usr: User Binaries- Secondary hierarchy for read-only user data; contains the majority of (multi-)user utilities and applications.The /usr/local hierarchy is for use by the system administrator when installing software locally. It needs to be safe from being overwritten when the system software is updated. It may be used for programs and data that are shareable amongst a group of hosts, but not found in /usr .

/var: Variable- Variable files—files whose content is expected to continually change during normal operation of the system—such as logs, spool files, and temporary e-mail files.It contains Application cache files (/var/cache), package manager & database files (/var/lib), lock file (/var/lock), various logs (/var/log), users mailboxes (/var/mail) & print queues and outgoing mail queue (/var/spool).
