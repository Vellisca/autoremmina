Para poder ponerlo como quieren, hay que seguir los siguientes pasos:

sudo apt-get install git
git clone https://github.com/Vellisca/autoremmina  #SIN SUDO
cd autoremmina/
sudo chmod +x spasshw.sh
sudo nano .bashrc
#Meter al final del archivo: 
./autoremmina/spasshw.sh
CTRL + X, Y
exit #Salir de la terminal y volver a entrar para verificar
