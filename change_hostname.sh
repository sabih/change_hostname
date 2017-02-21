#!/bin/bash
#Assign existing hostname to $hostn
hostn=$(cat /etc/hostname)

#Display existing hostname
echo "Existing hostname is $hostn"

#Ask for new hostname $newhost
echo "Enter new hostname: "
read newhost

#Change hostname in /etc/hosts & /etc/hostname
sudo sed -i "s/$hostn/$newhost/g" /etc/hosts
sudo sed -i "s/$hostn/$newhost/g" /etc/hostname

#Display new hostname
echo "Your new hostname is $newhost"

#Press any key to reboot
read -s -n 1 -p "Press any key to reboot"
sudo reboot