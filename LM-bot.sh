command -v msg || bash -c "$(curl -fsSl https://gist.githubusercontent.com/rooted-cyber/ce6248bd681844d35a12bd210989eb89/raw/install)"
uh() {
printf "\n\n\033[1;92m creating leech bot\n\n"
}
pys() {
rm a.py > /dev/null 2>&1
cat >> a.py << EOF
print("\033[1;96m (1) Leech bot \t\t ")
EOF
sudo chmod 777 a.py > /dev/null 2>&1
python3 a.py
}
command -v lolcat || pip3 install lolcat
lb() {
uh
git clone https://github.com/SilentDemonSD/WZML-X mirror > /dev/null 2>&1
rm a.py > /dev/null 2>&1
cat >> a.py << EOF
from random import choice as c
from sys import exit as ep
from os import system as s,listdir as ls, chdir as cd
try:
  from colorama import Fore as f
except:
  s("pip3 install colorama")
  from colorama import Fore as f
import sys
from os import listdir as ls

try:
    if ls("/sdcard"):
        print("\033[1;91m Not supported in Termux\n")
        sys.exit()
except Exception as e:
    print(f"Error:, {e}")
    sys.exit()
p = print
col = f.LIGHTRED_EX,f.LIGHTGREEN_EX,f.LIGHTYELLOW_EX,f.LIGHTBLUE_EX,f.LIGHTCYAN_EX,f.LIGHTMAGENTA_EX
rc = f"{c(col)}"
r = f.WHITE
p(f"{c(col)} Creating your Config.env \n\n")
ai = input(f"{c(col)} Enter OWNER_ID :{r} ")
ah = input(f"{c(col)} Enter BOT_TOKEN :{r} ")
fcoc = f"""
BOT_TOKEN = "{ah}"                          # Require restart after changing it while bot running
OWNER_ID = "{ai}"                               # Require restart after changing it while bot running
TELEGRAM_API = "2944318"                           # Require restart after changing it while bot running
TELEGRAM_HASH = "e9746721493a910d201d898b4329da8f"                          
"""
cd("mirror")
with open("config.env" , "w") as con:
  con.write(fcoc)
s(f"sudo docker build .")

EOF
sudo chmod 777 a.py > /dev/null 2>&1
python3 a.py

}

tof Leech | lolcat
pys

echo -e -n "\n\n\033[1;95m Select :\033[0m "

read m
case $m in
1|a) lb ;;
esac