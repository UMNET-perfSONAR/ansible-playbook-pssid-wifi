#/bin/sh

if [ "$1" == "" ]; then
  directory="inventory"
else
  directory=$1
fi
#echo $directory/group_vars/all/wifi/ps_archive.yml
#exit

mkdir -p $directory/group_vars/all/wifi
mkdir -p $directory/host_vars/

#wget -q -P $directory -nc \
#  https://raw.githubusercontent.com/wifi/ansible-playbook-wifi/master/inventory/hosts

if ! [ -f $directory/group_vars/all/wifi/wifi.yml ]; then
  cp roles/ansible-role-wifi/defaults/main.yml \
    $directory/group_vars/all/wifi/wifi.yml
fi
