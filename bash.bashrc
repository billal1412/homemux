# Code By Billal
# Copyright 2020 Billal
# My Team: Cyber Ghost Indonesian
#        : Black Coder Crush
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
b="\033[34;1m"
 p="\033[39;1m"
  k="\033[33;1m"
   m="\033[31;1m"
    h="\033[32;1m"
   c="\033[35;1m"
  pu="\033[36;1m"
 x="\033[30;1m"
o="\033[0m"
get_os(){
	neofetch | grep "OS" | awk {'print $2,$3,$4,$5,$6,$7,$8,$9,$10'} > os
}
get_model(){
	neofetch | grep "Host" | awk {'print $2,$3,$4,$5,$6,$7,$8,$9,$10'} > model
}
get_shell(){
	neofetch | grep "Shell" | awk {'print $2,$3,$4,$5,$6,$7,$8,$9,$10'} > shell
}
clear
get_os
get_model
get_shell
os=$(cat os)
hp=$(cat model)
sh=$(cat shell)
nama=$(cat $HOME/../usr/etc/myname)
printf "${b}~[${h}        INFO DETAILS        ${b}]~\n"
printf "${k}[*] OS anda${m}: ${h}$os\n"
printf "${k}[*] HP anda${m}: ${h}$hp\n"
printf "${k}[*] SH anda${m}: ${h}$sh\n"
printf "${b}~[${h}          INFO TERM         ${b}]~\n"
printf "${k}[#] Name ${m}: ${h}$nama\n"
printf "${k}[#] Group${m}: ${h}Cyber Ghost Indonesian\n"
printf "${k}         ${m}: ${h}Black Coder Crush\n\n"
rm -rf model os
export PS1='\[\033[01;34m\][ \[\033[01;32m\]${PWD/*\//}\[\033[01;34m\] ]>> \[\033[01;32m\]'
