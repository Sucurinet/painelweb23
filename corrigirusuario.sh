#!/bin/bash

tput setaf 1 ; tput bold ;echo "OBS: Você deve ter copiado update.zip junto com esse arquivo de correção"; tput sgr0;
read -p "Você possui o Script do PHreaker56 Instalado na VPS (se sim apenas atualiza) digite (S/N) " -n 1 -r

echo

case "$REPLY" in 
  s|S ) 
    tput setaf 4 ; tput bold ;echo "Aguarde a correção automatica... BY Junior Rios"; tput sgr0;
    apt-get install unzip
	unzip update.zip
	chmod +x alterarlimite.sh
	chmod 777 alterarlimite.sh
	chmod +x AlterarSenha.sh
	chmod 777 Alterarsenha.sh
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
    tput setaf 4 ; tput bold ;echo "Aguarde a correção automatica... BY Junior Rios"; tput sgr0;
    apt-get install unzip
	unzip update.zip
	chmod +x alterarlimite.sh
	chmod 777 alterarlimite.sh
	chmod +x AlterarSenha.sh
	chmod 777 Alterarsenha.sh
	chmod +x criarusuario.sh
	chmod 777 criarusuario.sh
	chmod +x KillUser.sh
	chmod 777 KillUser.sh
	chmod +x remover.sh
	chmod 777 remover.sh
	chmod +x sshmonitor.sh
	chmod 777 sshmonitor.sh
	wget http://phreaker56.obex.pw/vpsmanager/vpsmanagersetup.sh
    chmod +x vpsmanagersetup.sh
	tput setaf 2 ; tput bold ; echo "Script Corrigido com Sucesso agora instale o vps manager confirmando!" ; tput sgr0;
	./vpsmanagersetup.sh  
  
  ;;
    * ) echo "Invalido" ;;
esac

exit 0