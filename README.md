# INSTALANDO DEPENDENCIAS
---
* pacotes necessários `sudo apt install conky && sudo apt install conky-all && sudo apt install curl`
* tem integração com audacius reprodutor de músicas
# ARQUIVOS
---
* clock rings.lua  configurações em linguagem lua 

* configurar obtem os dados referente a rede

* conkyrc  configurações secundárias

* info audacious onde é salvo os dados sobre a música

* conky audacious carrega dados da musica sendo executada no audacious
* conky  iniciar arquivo que o sistema vai usar para iniciar automático
* dados de rede onde é salvo os dados da rede
# ADAPTADOR DE REDE PADRONIZADO
---
* na pasta `/etc/default/grub` editar o arquivo na linha onde:
1. GRUB_CMDLINE_LINUX_DEFAULT="quiet" 
1. no debian e "quiet splash" no ubuntu inserir antes do quiet net.ifnames=0"
1. atualizar grub com update-grub depois reiniciar a máquina

METAS
---
-[]instalar o conky junto na aplicação
-[x]  adicionar esplicações no arquivo readme  
-[]renomear config para configuration
