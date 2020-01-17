# Copyright 2020 Billal
# My Team : Cyber Ghost Indonesian
#         : Black Coder Crush
b="\033[34;1m"
 p="\033[39;1m"
  k="\033[33;1m"
   m="\033[31;1m"
    h="\033[32;1m"
     c="\033[35;1m"
      pu="\033[36;1m"
       x="\033[30;1m"
        o="\033[0m"

banner(){
	printf "${k}[#] Author${m}: ${h}Billal Fauzan\n"
	printf "${k}[#] Group ${m}: ${h}Cyber Ghost Indonesian\n"
	printf "${k}          ${m}: ${h}Black Coder Crush\n\n"
}

cek(){
	if [[ -z $(command -v neofetch) ]]; then
		printf "${k}[+] ${c}Installing Package${o}\n"
		pkg install neofetch
	fi
}

main(){
	clear
	banner
	cek
	clear
	banner
	printf "${b}[?] Your Name: ${h}"
	read name
	echo $name > $HOME/../usr/etc/myname
	printf "${k}[!] ${pu}Remove Old Display${o}"
	sleep 2
	rm -rf $HOME/../usr/etc/bash.bashrc
	printf "\n${k}[*] ${h}Success Remove${o}"
	sleep 2
	printf "\n${k}[!] ${pu}Installing New Display${o}"
	sleep 2
	cp -rf bash.bashrc $HOME/../usr/etc
	printf "\n${k}[*] ${h}Success Install${o}\n"
	sleep 3
	printf "\n${k}[-] ${m}Exiting Termux ...${o}"
	killall -9 com.termux
}
main
