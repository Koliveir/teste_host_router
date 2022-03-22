#!/bin/bash
clear

#ROTEADORES MATRIZ

WFPV0019="192.168.1.95"
WFPV004="192.168.1.60"

#ROTEADORES REGIS

WFPV012="192.168.3.59"
WFPV018="192.168.3.65"
WFPV020="192.168.3.66"

#COLETORES

CDPV001="1001"
CDPV002="1002"
CDPV003="1003"
CDPV004="1004"
CDPV005="1005"
CDPV006="1006"
CDPV007="1007"
CDPV008="1008"
CDPV009="1009"
CDPV010="1010"
CDPV011="1011"
CDPV012="1012"

#-------------------------------------------------------
#MENU

menu()
{
clear	
echo "-----------------------------------------------------------"
echo "CHECAGEM DOS COLETORES"
echo ""
echo "1) COLETORES MATRIZ"
echo "2) COLETORES REGIS"
echo "3) SAIR"
echo ""
echo -n "Digite a opção desejada: "
read local
echo -n
echo ""
echo "Opção informada ($local)"

case "$local" in
	1)
		matriz
	;;
	2)
		regis
	;;
	3)
		clear
		exit
	;;	
	*)
		echo "Opção inválida"
		menu
esac
}

#Função de checar os coletores da Matriz

matriz ()
{
	clear
	echo "-------------------------------------------------------"
	echo -e '\033[1;32mCOLETORES DA MATRIZ\033[00;37m'
	echo ""
	echo "1) FORMAGEM 1  CDPV005"
	echo "2) FORMAGEM 2  CDPV007"
	echo "3) BOBINAS     CDPV004"
	echo "4) EXPED 1     CDPV002"
	echo "5) EXPED 2     CDPV012"
	echo "6) VERIFICAR TODOS OS COLETORES"
	echo "7) VOLTAR P/ MENU"
	echo "8) SAIR"
	echo ""
	echo -n "Digite a opção desejada: "
	read coletor
	echo "Opcão informada ($coletor)"
	echo ""

	case "$coletor" in
		1)
			nc -z -w 3 $WFPV0019 $CDPV005
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV0019\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				matriz
			else
				clear
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL PELO COLETOR NA FORMAGEM - RAMAL 2055/2059\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar"
				read voltar
				matriz
			fi
		;;
		2)
			nc -z -w 3 $WFPV0019 $CDPV007
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV0019\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				matriz
			else
				clear
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL PELO COLETOR NA FORMAGEM - RAMAL 2055/2059\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar"
				read voltar
				matriz
			fi
		;;
		3)
			nc -z -w 3 $WFPV0019 $CDPV004
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV0019\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				matriz
			else
				clear
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - RAMAL 2051\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar"
				read voltar
				matriz
			fi
		;;
		4)
			nc -z -w 3 $WFPV004 $CDPV002
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV004\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				matriz
			else
				clear
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - RAMAL 2060\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar"
				read voltar
				matriz
			fi
		;;
		5)
			nc -z -w 3 $WFPV004 $CDPV012
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV004\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				matriz
			else
				clear
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - RAMAL 2060\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar"
				read voltar
				matriz
			fi
		;;
		6)
			nc -z -w 3 $WFPV0019 $CDPV005
			if [ $? -eq 0 ]; then
				clear
				echo "CDPV005 - FORMAGEM 1"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV0019\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				echo "CDPV005 - FORMAGEM 1"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL PELO COLETOR NA FORMAGEM - RAMAL 2055/2059\033[00;37m'
				echo ""
			fi
			nc -z -w 3 $WFPV0019 $CDPV007
			if [ $? -eq 0 ]; then
				echo "CDPV007 - FORMAGEM 2"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV0019\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				echo "CDPV007 - FORMAGEM 2"
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL PELO COLETOR NA FORMAGEM - RAMAL 2055/2059\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			fi
			nc -z -w 3 $WFPV0019 $CDPV004
			if [ $? -eq 0 ]; then
				echo "CDPV004 - BOBINAS"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV0019\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				echo "CDPV004 - BOBINAS"
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - RAMAL 2051\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			fi
			nc -z -w 3 $WFPV004 $CDPV002
			if [ $? -eq 0 ]; then
				echo "CDPV002 - EXPED 1"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV004\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				echo "CDPV002 - EXPED 1"
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - RAMAL 2060\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			fi
			nc -z -w 3 $WFPV004 $CDPV012
			if [ $? -eq 0 ]; then
				echo "CDPV012 - EXPED 2"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV004\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				echo "CDPV012 - EXPED 2"
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - RAMAL 2060\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			fi
			echo -n "Aperte enter p/ voltar"
			read voltar
			matriz
		;;
		7)
			menu
			sleep 1
		;;
		8)
			clear
			exit
		;;	
		*)
			echo "Opção incorreta"
			sleep 1
			matriz		
	esac

	menu
}

#Função de checar os coletores da Regis

regis()
{
	clear
	echo "-------------------------------------------------------"
	echo -e '\033[1;32mCOLETORES DA REGIS\033[00;37m'
	echo ""
	echo "1) DOCAS 1  -	   CDPV001"
	echo "2) DOCAS 2  -	   CDPV009"
	echo "3) DOCAS 3  -	   CDPV010"
	echo "4) SEMI 1   -	   CDPV003"
	echo "5) SEMI 2   -	   CDPV008"
	echo "6) PALETIZAÇÃO -    CDPV006"
	echo "7) VERIFICAR TODOS OS COLETORES"
	echo "8) VOLTAR P/ MENU"
	echo "9) SAIR"
	echo ""
	echo -n "Digite a opção desejada: "
	read coletor
	echo "Opcão informada ($coletor)"
	echo ""

	case "$coletor" in
		1)
			nc -z -w 3 $WFPV012 $CDPV001
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV012\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				regis
			else
				clear
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7832\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar"
				read voltar
				regis
				fi
		;;
		2)
			nc -z -w 3 $WFPV012 $CDPV009
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV012\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				regis
			else
				clear
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7832\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar"
				read voltar
				regis
				fi
		;;
		3)
			nc -z -w 3 $WFPV012 $CDPV010
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV012\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				regis
			else
				clear
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7832\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar"
				read voltar
				regis
				fi
		;;
		4)
			nc -z -w 3 $WFPV018 $CDPV003
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV018\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				regis
			else
				nc -z -w 3 $WFPV020 $CDPV003
				if [ $? -eq 0 ]; then
					clear
					echo "----------------------------------------------------------------------"
					echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV020\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
					echo -n "Aperte enter p/ voltar" 
					read voltar
					regis				
				else
					clear
					echo "----------------------------------------------------------------------"
					echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7833\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
					echo -n "Aperte enter p/ voltar"
					read voltar
					regis
				fi
			fi
		;;
		5)
			nc -z -w 3 $WFPV018 $CDPV008
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV018\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				regis
			else
				nc -z -w 3 $WFPV020 $CDPV008
				if [ $? -eq 0 ]; then
					clear
					echo "----------------------------------------------------------------------"
					echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV020\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
					echo -n "Aperte enter p/ voltar" 
					read voltar
					regis				
				else
					clear
					echo "----------------------------------------------------------------------"
					echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7833\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
					echo -n "Aperte enter p/ voltar"
					read voltar
					regis
				fi
			fi
		;;
		6)
			nc -z -w 3 $WFPV018 $CDPV006
			if [ $? -eq 0 ]; then
				clear
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV018\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				regis
			else
				nc -z -w 3 $WFPV020 $CDPV006
				if [ $? -eq 0 ]; then
					clear
					echo "----------------------------------------------------------------------"
					echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV020\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
					echo -n "Aperte enter p/ voltar" 
					read voltar
					regis				
				else
					clear
					echo "----------------------------------------------------------------------"
					echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7833\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
					echo -n "Aperte enter p/ voltar"
					read voltar
					regis
				fi
			fi
		;;
		7)
			nc -z -w 3 $WFPV012 $CDPV001
			clear
			if [ $? -eq 0 ]; then
				echo "DOCA 1 - CDPV001"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV012\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				echo "DOCA 1 - CDPV001"
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7832\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			fi
				nc -z -w 3 $WFPV012 $CDPV009
			if [ $? -eq 0 ]; then
				echo "DOCAS 2 - CDPV009"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV012\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				echo "DOCAS 2 - CDPV009"
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7832\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			fi
			nc -z -w 3 $WFPV012 $CDPV010
			if [ $? -eq 0 ]; then
				echo "DOCAS 3 - CDPV010"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV012\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				echo "DOCAS 3 - CDPV010"			
				echo "----------------------------------------------------------------------"
				echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7832\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				fi
			nc -z -w 3 $WFPV018 $CDPV003
			if [ $? -eq 0 ]; then
				echo "SEMI 1 - CDPV003"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV018\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				nc -z -w 3 $WFPV020 $CDPV003
				if [ $? -eq 0 ]; then
					echo "SEMI 1 - CDPV003"
					echo "----------------------------------------------------------------------"
					echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV020\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""				
				else
					echo "SEMI 1 - CDPV003"
					echo "----------------------------------------------------------------------"
					echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7833\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
				fi
			fi
						nc -z -w 3 $WFPV018 $CDPV008
			if [ $? -eq 0 ]; then
				echo "SEMI 2 - CDPV008"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV018\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
			else
				nc -z -w 3 $WFPV020 $CDPV008
				if [ $? -eq 0 ]; then
					echo "SEMI 2 - CDPV008"
					echo "----------------------------------------------------------------------"
					echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV020\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""				
				else
					echo "SEMI 2 - CDPV008"
					echo "----------------------------------------------------------------------"
					echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7833\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
				fi
			fi
						nc -z -w 3 $WFPV018 $CDPV006
			if [ $? -eq 0 ]; then
				echo "PALET - CDPV006"
				echo "----------------------------------------------------------------------"
				echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV018\033[00;37m'
				echo "----------------------------------------------------------------------"
				echo ""
				echo -n "Aperte enter p/ voltar" 
				read voltar
				regis
			else
				nc -z -w 3 $WFPV020 $CDPV006
				if [ $? -eq 0 ]; then
					echo "PALET - CDPV006"
					echo "----------------------------------------------------------------------"
					echo -e '\033[1;32mCOLETOR ESTÁ ONLINE E CONECTADO NO ROTEADOR WFPV020\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
					echo -n "Aperte enter p/ voltar" 
					read voltar
					regis				
				else
					echo "PALET - CDPV006"
					echo "----------------------------------------------------------------------"
					echo -e  '\033[1;31mCOLETOR DESCONECTADO, ENTRE EM CONTATO COM O RESPONSAVEL - TEL 4147-7833\033[00;37m'
					echo "----------------------------------------------------------------------"
					echo ""
					echo -n "Aperte enter p/ voltar"
					read voltar
					regis
				fi
			fi				
		;;
		8)
			menu
			sleep 1
		;;
		9)
			clear
			exit
		;;
		*)
			echo "Opção inválida"
			menu
	esac
}


#INICIO DO SCRIPT CHAMANDO FUNÇÃO DO MENU
menu
