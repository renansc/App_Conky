#!/bin/bash
#busca no arquivo os dados salvos.
ipExternoAtual=`cat ~/github/App_Conky/source/dados_rede.txt |grep "ipExterno: "|cut -c14-25`
ipLocalAtual=`cat ~/github/App_Conky/source/dados_rede.txt |grep "ipLocal: " |cut -c10-22`
endMacAtual=`cat ~/github/App_Conky/source/dados_rede.txt |grep "endMac: " |cut -c9-32`
#busca dados atualizados
ipLocalNovo=`ifconfig | grep "inet 192.168" |cut -c14-26`
endMacNovo=`ifconfig | grep "inet6 f" |cut -c15-38`
#confere ip local
echo "ip atual-$ipLocalAtual-${#ipLocalAtual}";
echo "ip novo-$ipLocalNovo-${#ipLocalNovo}";
echo "end mac-$endMacAtual-${#endMacAtual}";
echo "end mac-$endMacNovo-${#endMacNovo}";

if [ "$ipLocalAtual" = "$ipLocalNovo" ]
then
	echo "iplocal não mudou $ipLocalAtual";
	echo "ipLocal: "$ipLocalAtual > ~/github/App_Conky/source/dados_rede.txt;
	ipLocal=$ipLocalAtual;
else
	echo "ip local diferente $ipLocalNovo";
	echo "ipLocal: "$ipLocalNovo > ~/github/App_Conky/source/dados_rede.txt;
 	ipLocal=$ipLocalNovo;
fi
#confere endereço mac
if [ "$endMacAtual" = "$endMacNovo" ]
then
	echo "endereço mac não mudou $endMacAtual";
	echo "endMac: $endMacAtual" >> ~/github/App_Conky/source/dados_rede.txt;
	endMac=$endMacAtual;
	echo "variavel $dados_rede";

else
	echo "endereço mac diferente $endMacNovo";
	echo "endMac: $endMacNovo" >> ~/github/App_Conky/source/dados_rede.txt;
	endMac=$endMacNovo;
	echo "variavel: $dados_rede";
fi
#escreve dados ja atualizados]
echo "ipExterno: (buscando)" >> ~/github/App_Conky/source/dados_rede.txt;
#busca ip externo
ipExternoNovo=`curl "ifconfig.me"`
#verifica ip externo
echo "externo atual-$ipExternoAtual-${#ipExternoAtual}"
echo "externo novo-$ipExternoNovo-${#ipExternoNovo}"
if [ ${#ipExternoNovo} = 0 ]
then
	echo "Não Encontrado";
	ipExterno="Sem Internet";
else
	if [ "$ipExternoAtual" = "$ipExternoNovo" ]
	then
		echo "ip externo não mudou $ipExternoAtual";
		ipExterno=$ipExternoAtual;
	else
		echo "ip externo novo $ipExternoNovo";
		ipExterno=$ipExternoNovo;
	fi
fi
echo "ipLocal: "$ipLocal > ~/github/App_Conky/source/dados_rede.txt;
echo "endMac: "$endMac >> ~/github/App_Conky/source/dados_rede.txt;
echo "ipExterno: "$ipExterno >> ~/github/App_Conky/source/dados_rede.txt;
