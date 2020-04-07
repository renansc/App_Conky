#!/bin/bash
#busca no arquivo os dados salvos.
sudo mv grub.txt /etc/default/grub;
sudo update-grub;
mv conky.desktop ~/.config/autostart/conky.desktop
#sudo reboot

