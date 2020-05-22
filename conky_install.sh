#!/bin/bash
#instala o conky
echo "instalando pacote do conky"
sudo apt-get install conky-all
#instala censores
echo "instalando pacote de sensores lm-sensors"
sudo apt-get install lm-sensors
echo "instalando suporte aplet do sensors"
sudo apt-get install sensors-applet
echo "configurando sensores"
sudo sensors-detect --yes
echo "executando monitoramento de sensores"
sudo sensors &&
#instala o curl
echo "instalando pacote curl"
sudo apt-get install curl
#busca no arquivo os dados salvos.
echo "iniciando configuração"
echo "copiando arquivo de configuração adaptador de rede"
sudo cp ~/github/App_Conky/source/grub.txt /etc/default/grub;
echo "atualizando configurações"
sudo update-grub;
echo "carregando arquivo de inicialização automatica"
echo `cp ~/github/App_Conky/source/conky.desktop ~/.config/autostart/conky.desktop`
echo "reiniciando para computador"
sudo reboot

