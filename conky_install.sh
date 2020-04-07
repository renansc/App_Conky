#!/bin/bash
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

