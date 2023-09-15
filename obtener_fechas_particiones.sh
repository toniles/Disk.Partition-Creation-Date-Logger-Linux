#!/bin/bash

# Crear o limpiar el archivo de log si ya existe
> particiones_fechas.log

# Iterar sobre cada disco
for disco in /dev/nvme0n1p* /dev/sda*; do
  # Comprobar si la partición es de un sistema de archivos de Linux
  tipo=$(lsblk -f $disco -o FSTYPE -n)
  if [ "$tipo" == "ext4" ] || [ "$tipo" == "xfs" ] || [ "$tipo" == "btrfs" ]; then
    # Obtener la fecha de creación
    fecha=$(sudo dumpe2fs $disco 2>/dev/null | grep 'Filesystem created:')
    if [ ! -z "$fecha" ]; then
      echo "$disco - $fecha" >> particiones_fechas.log
    fi
  fi
done

echo "Las fechas de creación de las particiones han sido guardadas en particiones_fechas.log."

