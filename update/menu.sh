#!/bin/bash 
 # ========================================= 
 vlx=$(grep -c -E "^#& " "/etc/xray/config.json") 
 let vla=$vlx/2 
 vmc=$(grep -c -E "^### " "/etc/xray/config.json") 
 let vma=$vmc/2 
 ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)" 
  
 trx=$(grep -c -E "^#! " "/etc/xray/config.json") 
 let tra=$trx/2 
 ssx=$(grep -c -E "^## " "/etc/xray/config.json") 
 let ssa=$ssx/2 
 COLOR1='\033[0;35m' 
 COLOR2='\033[0;39m' 
 clear

BURIQ () {
    curl -sS https://raw.githubusercontent.com/xlord27/permission/main/ipmini > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/xlord27/permission/main/ipmini | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/xlord27/permission/main/ipmini | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/xlord27/permission/main/ipmini | grep $MYIP | awk '{print $3}')
fi

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
#Download/Upload today
dtoday="$(vnstat -i eth0 | grep "today" | awk '{print $2" "substr ($3, 1, 1)}')"
utoday="$(vnstat -i eth0 | grep "today" | awk '{print $5" "substr ($6, 1, 1)}')"
ttoday="$(vnstat -i eth0 | grep "today" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload yesterday
dyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $2" "substr ($3, 1, 1)}')"
uyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $5" "substr ($6, 1, 1)}')"
tyest="$(vnstat -i eth0 | grep "yesterday" | awk '{print $8" "substr ($9, 1, 1)}')"
#Download/Upload current month
dmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $3" "substr ($4, 1, 1)}')"
umon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $6" "substr ($7, 1, 1)}')"
tmon="$(vnstat -i eth0 -m | grep "`date +"%b '%y"`" | awk '{print $9" "substr ($10, 1, 1)}')"
DATEVPS=$(date +'%d/%m/%Y')
TIMEZONE=$(printf '%(%H:%M:%S)T')
domain=$(cat /etc/xray/domain)
SERONLINE=$(uptime -p | cut -d " " -f 2-10000)today
up=$(uptime | awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
cores=$(awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo)
freq=$(awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo)
tram=$(free -m | awk 'NR==2 {print $2}')
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*/} / ${corediilik:-1}))"
cpu_usage+=" %"
cname=$(awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo)

clear

# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

###########- END COLOR CODE -##########
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# TOTAL RAM
total_ram=` grep "MemTotal: " /proc/meminfo | awk '{ print $2}'`
totalram=$(($total_ram/1024))

persenmemori="$(echo "scale=2; $usmem*100/$tomem" | bc)"
#persencpu=
persencpu="$(echo "scale=2; $cpu1+$cpu2" | bc)"

# // Clear
clear
clear && clear && clear
clear;clear;clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
sshstunel=$(service stunnel4 status | grep active | cut -d ' ' $stat)
if [ "$sshstunel" = "active" ]; then
resst="${green}ON${NC}"
else
resst="${red}OFF${NC}"
fi
sshws=$(service ws-stunnel status | grep active | cut -d ' ' $stat)
if [ "$sshws" = "active" ]; then
ressshws="${green}ON${NC}"
else
ressshws="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
function addhost(){
clear
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -rp "Domain/Host: " -e host
echo ""
if [ -z $host ]; then
echo "????"
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
read -n 1 -s -r -p "Press any key to back on menu"
setting-menu
else
echo "IP=$host" > /var/lib/scrz-prem/ipvps.conf
echo -e "\033[0;34m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo "Dont forget to renew cert"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
fi
}
function genssl(){
clear
systemctl stop nginx
domain=$(cat /var/lib/scrz-prem/ipvps.conf | cut -d'=' -f2)
Cek=$(lsof -i:80 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
if [[ ! -z "$Cek" ]]; then
sleep 1
echo -e "[ ${red}WARNING${NC} ] Detected port 80 used by $Cek " 
systemctl stop $Cek
sleep 2
echo -e "[ ${green}INFO${NC} ] Processing to stop $Cek " 
sleep 1
fi
echo -e "[ ${green}INFO${NC} ] Starting renew cert... " 
sleep 2
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
echo -e "[ ${green}INFO${NC} ] Renew cert done... " 
sleep 2
echo -e "[ ${green}INFO${NC} ] Starting service $Cek " 
sleep 2
echo $domain > /etc/xray/domain
systemctl restart xray
systemctl restart nginx
echo -e "[ ${green}INFO${NC} ] All finished... " 
sleep 0.5
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
export sem=$( curl -s https://raw.githubusercontent.com/xlord27/permission/main/versions)
export pak=$( cat /home/.ver)
IPVPS=$(curl -s ipinfo.io/ip )
clear
echo -e "$COLOR1┌──────────────────────────────────────────────────┐${NC}" 
echo -e "$COLOR1│  ${NC}            ${YELLOW}<< XLORD VPN STORE >>${NC}         $COLOR1      │ ${NC}"
echo -e "$COLOR1└──────────────────────────────────────────────────┘${NC}" 
echo -e " $COLOR1┌──────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1 │${NC} ✪$bd OS NAME    : ${BICyan}$cname${NC}"
echo -e "$COLOR1 │${NC} ✪$bd Use Core   : ${BICyan}Multi Lite${NC}"
echo -e "$COLOR1 │${NC} ✪$bd RAM VPS    : ${BICyan}${totalram} MB${NC}"
echo -e "$COLOR1 │${NC} ✪$bd IP VPS     : ${BICyan}$IPVPS${NC}"
echo -e "$COLOR1 │${NC} ✪$bd DATE       : ${BICyan}$DATEVPS${NC}"
echo -e "$COLOR1 │${NC} ✪$bd UPTIME     : ${BICyan}$SERONLINE${NC}"
echo -e "$COLOR1 │${NC} ✪$bd CITY       : ${BICyan}$CITY${NC}"
echo -e "$COLOR1 │${NC} ✪$bd ISP VPS    : ${BICyan}$ISP${NC}"  
echo -e "$COLOR1 │${NC} ✪$bd DOMAIN MU  : ${BICyan}$domain${NC}"
echo -e "$COLOR1 │${NC} ✪$bd KATA KATA  : \033[31;1m𝗝𝗔𝗡𝗚𝗔𝗡 𝗟𝗨𝗣𝗔 𝗦𝗛𝗢𝗟𝗔𝗧${NC}"
echo -e "$COLOR1 └──────────────────────────────────────────────────┘${NC}" 

echo -e "$COLOR1┌─────────────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│${BICyan} SSH ${NC}: $ressh"" ${BICyan} NGINX ${NC}: $resngx"" ${BICyan}  XRAY ${NC}: $resv2r"" ${BICyan} TROJAN ${NC}: $resv2r       $COLOR1│"
echo -e "$COLOR1│${BICyan}     STUNNEL ${NC}: $resst" "${BICyan} DROPBEAR ${NC}: $resdbr" "${BICyan} SSH-WS ${NC}: $ressshws        $COLOR1│"
echo -e "$COLOR1└─────────────────────────────────────────────────────┘${NC}"

echo -e " $COLOR1┌──────────────────────────────────────────────────┐${NC}" 
echo -e " $COLOR1│${GREEN}   \033[0m ${BOLD}${YELLOW}SSH     VMESS       VLESS      TROJAN $NC        $COLOR1│" 
echo -e " $COLOR1│${GREEN}   \033[0m ${Blue} $ssh1        $vma           $vla          $tra $NC           $COLOR1│" 
echo -e " $COLOR1└──────────────────────────────────────────────────┘${NC}" 
  
echo -e "$COLOR1┌───────────────────────────────────────────────────┐${NC}"
echo -e "
[${green}01${NC}]${color1} •${color3}$bd PANEL SSH & OVPN (${color2}menu-ssh${color3})
[${green}02${NC}]${color1} •${color3}$bd PANEL V2ray Vmess & Vless (${color2}menu-wireguard${color3})
[${green}03${NC}]${color1} •${color3}$bd PANEL L2tp & PPTP Acpunt (${color2}menu-l2tp-pptp${color3})
[${green}04${NC}]${color1} •${color3}$bd PANEL Wireguard (${color2}menu-v2ray${color3})
[${green}05${NC}]${color1} •${color3}$bd PANEL SSR & SS Acount (${color2}menu-ssr-ss${color3})
[${green}06${NC}]${color1} •${color3}$bd PANEL Trojan (${color2}menu-trojan${color3})
[${green}07${NC}]${color1} •${color3}$bd GANTI Port All Acount (${color2}menu-port${color3})
[${green}08${NC}]${color1} •${color3}$bd CEK Status Layanan (${color2}running${color3})
[${green}09${NC}]${color1} •${color3}$bd MENU Tools (${color2}tools${color3})
[${green}10${NC}]${color1} •${color3}$bd WEB menu (${color2}webmin${color3})
[${green}11${NC}]${color1} •${color3}$bd INFO Script XLORD TUNNELING (${color2}info${color3})
[${green}12${NC}]${color1} •${color3}$bd Cek Bandwitch (${color2}vnstat${color3})
[${green}13${NC}]${color1} •${color3}$bd Cek Bandwitch Harian (${color2}vnstat -d${color3})
[${green}14${NC}]${color1} •${color3}$bd Reboot VPS (${color2}reboot${color3})
[${green}15${NC}]${color1} •${color3}$bd Restart VPS (${color2}restart${color3})
[${green}16${NC}]${color1} •${color3}$bd speedtest (${color2}tesjaringan${color3})
[${green}00${NC}]${color1} •${color3}$bd Back to exit Menu \033[1;32m<\033[1;33m<\033[1;31m<\033[1;31m"
echo ""
echo -e "$COLOR1└───────────────────────────────────────────────────┘${NC}"

echo -e "$COLOR1 ┌────────────────────────────────────────────────┐${NC}"
echo -e " $COLOR1│${YELLOW} HARI INI${NC}  : [$ttoday]|${YELLOW} │ BULANAN${NC}:[$tmon]${NS}     $COLOR1│"
echo -e "$COLOR1 └────────────────────────────────────────────────┘${NC}"
DATE=$(date +'%d %B %Y')
datediff() {
    d1=$(date -d "$1" +%s)
    d2=$(date -d "$2" +%s)
    echo -e " $COLOR1│${NC}   Expiry In      : $(( (d1 - d2) / 86400 )) Days $NC"
}
mai="datediff "$Exp" "$DATE""
echo -e " $COLOR1┌─────────────────────────────────────┐${NC}"
echo -e " $COLOR1│${NC}   Version        : $(cat /opt/.ver) 4.0 Lite ${NC}"
echo -e " $COLOR1│${NC}   Client         :\033[1;36m $Name \e[0m"
echo -e " $COLOR1│${NC}   Order By       : ${BIRed}XLORD VPN${NC}"
if [ $exp \< 1000 ];
then
echo -e "   $BICyan│$NC License      : ${GREEN}$sisa_hari$NC Days Tersisa $NC"
else
    datediff "$Exp" "$DATE"
fi;
echo -e " $COLOR1└─────────────────────────────────────┘${NC}"
echo -e  ""
 read -p "  Select menu :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
v2raay
;;
3)
l2tp
;;
4)
wgr
;;<
5)
ssssr
;;
6)
trojaan
;;
7)
changeport
;;
8)
running
;;
9)
menu-tools
;;
10)
wbmn
;;
11)
info
;;
12)
vnstat
;;
13)
vnstat -d
;;
14)
reboot
;;
15)
restart
;;
16)
speedtest
;;
0 | 00)
menu
;;
*)
exit
;;
esac
