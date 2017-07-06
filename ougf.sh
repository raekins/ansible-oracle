#!/bin/bash

echo "$ cat inventory/hosts"
cat inventory/hosts
echo "Press any key to continue..."
read -n 1

echo "$ ansible se-EMEA-EBC-FA420 -m ping"
ansible se-EMEA-EBC-FA420 -m ping
echo "Press any key to continue..."
read -n 1

echo "$ ansible flasharrays -m ping"
ansible flasharrays -m ping
echo "Press any key to continue..."
read -n 1

echo "$ ansible dbservers -m ping"
ansible dbservers -m ping
echo "Press any key to continue..."
read -n 1

echo "$ ansible all -m ping"
ansible all -m ping
echo "Press any key to continue..."
read -n 1

echo "$ ansible flasharrays -a /bin/date"
ansible flasharrays -a /bin/date
echo "Press any key to continue..."
read -n 1

echo '$ ansible dbservers -m shell -a "ps -ef | grep [o]ra_smon" '
ansible dbservers -m shell -a "ps -ef | grep [o]ra_smon"
echo "Press any key to continue..."
read -n 1

echo "$ ansible-playbook database_clone.yml --list-task"
ansible-playbook database_clone.yml --list-task
echo "Press any key to continue..."
read -n 1

echo "$ ansible-playbook listmounts.yml"
ansible-playbook listmounts.yml
