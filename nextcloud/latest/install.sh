#!/bin/bash
echo "Nextcloud installation (latest version)"
IP=$1
yum clean all
yum update -y
config setprop httpd-admin ForcedLoginModule ""
yum install -y nethserver-nextcloud nethserver-directory
config setprop nextcloud TrustedDomains $IP
signal-event nethserver-nextcloud-update

# create user1
signal-event user-create user1 "User One" /bin/bash
temp_file=$(mktemp)
echo "Nethesis,1234" > $temp_file
signal-event password-modify user1@`hostname` $temp_file

# create user2
signal-event user-create user2 "User Two" /bin/bash
temp_file=$(mktemp)
echo "Nethesis,1234" > $temp_file
signal-event password-modify user2@`hostname` $temp_file
