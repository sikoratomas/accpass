#Create user account
#has to be first.last format
#sudo adduser username --force-badname

echo -n "Enter the username: "
read username

#echo -n "Enter the password: "
#read -s password

adduser "$username" --force-badname
#echo $username:$password | chpasswd
#echo "$password" | passwd "$username" --stdin


#Add user to sudo group
sudo usermod -aG sudo "$username"
#sudo usermod -aG sudo username

#Enforce password complexity:
#Install libpam-pwquality package
#sudo apt-get install libpam-pwquality

#Backup common-password file
#sudo cp /etc/pam.d/common-password /etc/pam.d/common-password.original

#Add parameters to common-password
#password        requisite                       pam_pwquality.so retry=5 minlen=8 lcredit=-1 ucredit=-1 dcredit=-1 reject_username enforce_for_root

#Configure password rotation in /etc/login.defs
#PASS_MAX_DAYS 90
#PASS_MIN_DAYS 0
#PASS_WARN_AGE 14
