set -e 
sudo apt update 
echo [INFO] Updating...
echo [INFO] Installing Requirements...
sudo apt install gpg git curl 


sudo curl -fsSL \
https://super-linux.github.io/icecream-linux-packages/icecream.asc \
| sudo gpg --dearmor -o /etc/apt/keyrings/icecream.gpg
read -p do you want to run sudo apt clean?
if ["$YES=yes"]
then echo [INFO] running sudo apt clean sudo apt clean 
sudo apt clean 
if
fi 
if ["$NO=no"] 
then [INFO] skipping sudo apt clean...
if
fi 
