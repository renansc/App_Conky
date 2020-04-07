#!/bin/bash
#analizando se ha processo rodando
sleep 5;
teste=`top -b-n1|grep conky`;
if [ "$teste" != "" ]
then
#se ouver processos existentes encerra  
	`killall conky`; 
fi
#inicia conky de volta script de configuração apos 5 segundos
echo "executando conky devolta";
`sleep 10` && `exec "~/github/App_Conky/functions/conky_configurar.sh"`& `conky -c ~/github/App_Conky/config/conkyrc`; 



 
