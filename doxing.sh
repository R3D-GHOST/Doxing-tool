bin/bash/
clear
echo "DOXING TERMUX"
sleep 3.0
clear
#banner
function banner(){
    echo"
  ___          _             _            _ 
 |   \ _____ _(_)_ _  __ _  | |_ ___  ___| |
 | |) / _ \ \ / |    \/ _` | |  _/ _ \/ _ \ |
 |___/\___/_\_\_|_||_\__, |  \__\___/\___/_|
                     |___/                  
                     "
}

function depe(){
    
    pkg install git python3 php openssh -y
    clear
    git clone https://github.com/KasRoudra/PyPhisher
    
    cd PyPhisher
    
    pip3 install -r files/requirements.txt
    
    cd ../
    sleep 1
    clear
    echo"By R3DGH0ST"
    sleep 3
    clear
    
    #Maskphishing
    
    git clone https://github.com/jaykali/maskphish
    
    #Phoneinfoga
    
    pkg install python
    pkg install python2
    git clone https://github.com/abhinavkavuri/PhoneInfoga
    cd PhoneInfoga
    mv config.example.py config.py
    python3 -m pip install -r requirments.txt
    chmod +x *
    
    cd../
    
    pkg install whois
    pkg install dnsutils
    
    #Osint
    
    git clone https://github.com/mishakorzik/UserFinder
    
    clear
    
    sleep 3
    echo "Install end"
    sleep 1
    
}

function ip(){
    clear
    read -p "Coloca la IP :" ip_address
    echo "" 
    echo "Currency  : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency)" 
    echo "Currency Rates : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency_rates)" 
    echo "Currency Symbol : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=currency_symbol)" 
    echo "Country neighbours : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_neighbours)" 
    echo "Country phone : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_phone)" 
    echo "Country capital : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_capital)" 
    echo "Country code : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=country_code)" 
    echo "Currency Code : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=currency_code)" 
    echo ""
    echo "ISP : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=isp)" 
    echo "IP address type : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=type)" 
    echo ""
    echo "City : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=city)" 
    echo "Region : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=region)" 
    echo ""
    echo "Longitude : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=longitude)" 
    echo "Latitude : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=latitude)" 
    echo ""
    echo "Timezone name : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=timezone_name)" 
    echo "Timezone : $(curl -sS http://ipwhois.app/line/"$ip_address"?objects=timezone)" 
    echo ""
    echo "Organisation : $(curl  -sS http://ipwhois.app/line/"$ip_address"?objects=org)" 
    echo ""
}


function PyPhisher(){
    clear
    cd PyPhisher
    python3 pyphisher.py
    
}

function Maskphishing(){
    clear
    cd maskphish
    bash maskphish.sh
}

function PhoneInfoga(){
    clear
    cd PhoneInfoga
    echo "Place the number Example +346349XXXXX"
    read -p ">>> " numero
    python3 phoneinfoga.py -n $numero
    
}

function Osint(){
    clear
    cd UserFinder
    bash UserFinder.sh
    
}

function webscan(){
    clear
    echo"Put the url of the web"
    read -p ">>> " url
    clear
    host $url
    echo""
    echo"Put the ip of the web"
    read -p ">>> " ipweb
    clear
    whois $ipweb
    
}
clear
banner
echo""
sleep 1
echo"1) ---> Install dependencies "
sleep 1
echo""
echo"2) --->  IP INFO"
echo""
sleep 1
echo"3) ---> Maskphishing"
echo""
sleep 1
echo"4) ---> PhoneInfoga"
echo""
sleep 1
echo"5) ---> PyPhisher"
echo""
sleep 1
echo"6) ---> Osint"
echo""
sleep 1
echo"7) ---> WEB SCAN"
sleep 1
echo""
read -p ">>> " menu

if [ $menu = 2 ]; then
    ip

    
elif [ $menu = 3 ]; then
    Maskphishing

elif [ $menu = 4 ]; then
    PhoneInfoga

elif [ $menu = 5 ]; then
    PyPhisher

elif [ $menu = 6 ]; then
    Osint

elif [ $menu = 1 ]; then
    depe
    
elif [ $menu = 7 ]; then
    webscan

fi