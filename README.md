################# SCRIPT PARA SPASSHW #################################

Para poder ponerlo como quieren, hay que seguir los siguientes pasos:

sudo apt update
sudo apt upgrade -y
sudo apt-get install git <br>
git clone https://github.com/Vellisca/autoremmina  #SIN SUDO <br>
cd autoremmina/ <br>
sudo chmod +x spasshw.sh <br>
sudo nano .bashrc <br>
#Meter al final del archivo: <br>
./autoremmina/spasshw.sh <br>
CTRL + X, Y <br>
exit #Salir de la terminal y volver a entrar para verificar 
