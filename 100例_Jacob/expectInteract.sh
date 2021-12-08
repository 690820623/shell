#!/usr/bin/expect
spawn ssh root@192.168.22.194
expect "*password:"
send "123\r"
expect "*#"
interact

#!/home/tools/bin/64/expect -f
 set timeout -1  
 spawn ssh $BUser@$BHost
 expect  "*password:" { send "$password\r" }
 expect  "$*" { send "pwd\r" }
 interact

 #不知道为啥不行,识别不到expect命令,版本问题吧. 也许是要放到框里 expect EOF