#!/bin/bash -e

if [ $EUID -ne 0 ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

user=$SUDO_USER
user_safe=`echo $user | sed -u 's/\./_dot_/'`
[ -f /etc/sudoers.d/$user_safe ] || echo "$user ALL=NOPASSWD:ALL" | tee /etc/sudoers.d/$user_safe
$(stat /etc/sudoers.d/$user_safe | sed -n '4p' | grep -q 'Access: (0440') || chmod 0440 /etc/sudoers.d/$user_safe
