# Disk.Partition-Creation-Date-Logger-Linux
The script iterates over each disk partition and checks its filesystem type. If the type is one of Linux's filesystem types (ext4, xfs, btrfs), it then fetches the creation date using the dumpe2fs command. Finally, it saves this information in a log file.
