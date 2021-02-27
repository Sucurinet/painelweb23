#!/bin/bash

tput setaf 1 ; tput bold ;echo "OBS: arquivo de correção"; tput sgr0;
read -p "Você possui o Script ssh Instalado na VPS (se sim apenas atualiza) digite (S/N) " -n 1 -r

echo

case "$REPLY" in 
  s|S ) 
    tput setaf 4 ; tput bold ;echo "Aguarde a correção automatica... BY Junior Rios"; tput sgr0;
wget https://www.dropbox.com/s/lzq4jviaoxgo04z/update.zip > /dev/null 2>&1

sleep 2
   
	unzip update.zip > /dev/null 2>&1
rm -rf update.zip
	chmod +x alterarlimite.sh
	chmod 777 alterarlimite.sh
	chmod +x AlterarSenha.sh
	chmod 777 AlterarSenha.sh
	chmod +x criarusuario.sh
	chmod 777 criarusuario.sh
	chmod +x KillUser.sh
	chmod 777 KillUser.sh
	chmod +x remover.sh
	chmod 777 remover.sh
	chmod +x sshmonitor.sh
	chmod 777 sshmonitor.sh
	tput setaf 2 ; tput bold ; echo "Script Corrigido com Sucesso!" ; tput sgr0;
  
  ;;
  n|N )
	tput setaf 2 ; tput bold ; echo "Script Corrigido com Sucesso agora instale o vps manager confirmando!" ; tput sgr0;
	  
  
  ;;
    * ) echo "Invalido" ;;
esac

exit 0
