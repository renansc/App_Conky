#INSTALANDO DEPENDENCIAS
---
* PACOTES NECESSÁRIOS `sudo apt install conky && apt install conky-all && apt install curl`
O que outras pessoas estão dizendo
#ARQUIVO clock rings.lua
	arquivo com as configurações em linguagem lua 
#ARQUIVO configurar
	arquivo que obtem os dados referente a rede
#ARQUIVO conkyrc
	arquivo com as configuraçẽos secundárias
#ARQUIVO info audacious
	onde é salvo os dados sobre a música
#ARQUIVO conky audacious
	carrega dados da musica sendo executada no audacious
#ARQUIVO iniciar
	arquivo que o sistema vai usar para iniciar
#ARQUIVO dados de rede
	onde é salvo os dados da rede
#ADAPTADOR DE REDE PADRONIZADO
	na pasta /etc/default/grub editar o arquivo na linha onde:
		GRUB_CMDLINE_LINUX_DEFAULT="quiet" no debian e "quiet splash" no ubuntu inserir antes do quiet net.ifnames=0"
atualizar grub com update-grub depois reiniciar a máquina
