#!/bin/bash
# This is to demo shell scripting
echo -n "Please enter your name: "
read name
echo -n "Please enter your team: "
read team
echo "OHH Nice,Welcome to Etech Devops master class $name and you are also welcome to $team"
echo "End of script"

script to mount extra ebs:

#!/bin/bash
#To Automate mounting ebs volumes
#Author: Elvis.
lsblk
sleep 5
echo -n "Enter your directory mountpoint name: "
read dirname 
sudo mkdir /mnt/$dirname
sudo mkfs -t ext4 /dev/xvdf
sudo mount /dev/xvdf /mnt/$dirname
lsblk
echo "/dev/xvdf /mnt/$dirname ext4 defaults 0 1" | sudo tee -a /etc/fstab
sleep 10
# echo "Now we are unmounting the added disk"
# sudo umount /dev/xvdf /mnt/$dirname
# sudo rm -rf /mnt/$dirname
# lsblk
# sudo sed -i '/$dirname/d' /etc/fstab
cat /etc/fstab #to see that we no longer have any mount point
#echo "thank you" | sudo tee -a perm.log 


#!/bin/bash
echo -n "Enter the directory name you created earlier: "
read dirname
echo "Now we are unmounting the added disk"
sudo umount /dev/xvdg /mnt/$dirname
sudo rm -rf /mnt/$dirname
lsblk
sudo sed -i '/$dirname/d' /etc/fstab
cat /etc/fstab


aws ec2 create-volume
