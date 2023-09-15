## Disk.Partition-Creation-Date-Logger-Linux

This Bash script iterates over each disk partition and checks its filesystem type. If the partition has a Linux filesystem (ext4, xfs, btrfs), the script fetches its creation date using the `dumpe2fs` command. The script then logs this information to a file named `particiones_fechas.log`.

### Requirements

- Bash
- `dumpe2fs` utility
- Superuser permissions

### Installation

1. Clone the repository or download the Bash script to your local machine.
2. Open the terminal and navigate to the directory where the script is saved.
3. Run `chmod +x obtener_fechas_particiones.sh` to make the script executable.

### Usage

1. Open your terminal and navigate to the directory containing `obtener_fechas_particiones.sh`.
2. Run the script using superuser permissions: `sudo ./obtener_fechas_particiones.sh`.

### Output

After running the script, you will find a log file named `particiones_fechas.log` in the same directory. This file will contain the creation date of each Linux filesystem partition that the script iterated over.

### Note

This script requires superuser permissions to execute `dumpe2fs`. Make sure you understand the risks associated with running commands as a superuser.

### Contributing

Yeah boi!


