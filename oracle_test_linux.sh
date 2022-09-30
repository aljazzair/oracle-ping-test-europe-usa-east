#!/bin/bash
#Function of this script
#FunctionMenu
_Menu() {
echo =========================================================================
echo Test is completed! Please read test result in TXT file. If you want to see the result in terminal, please input numbers below:
echo 1. EASTERN USA Node
echo 2. EUROPE Node
echo 3. See all result
read -p "Please Input here:" NODEAREA
if [[ $NODEAREA -eq 1 ]];
	then
	cat america.txt
elif [[ $NODEAREA -eq 2 ]];
	then
	cat europe.txt
elif [[ $NODEAREA -eq 3 ]];
	then
	cat america.txt europe.txt	
else
	echo 
	echo
	echo
	echo ==================Wrong number, Please retry!==================
	echo
	echo
	echo
	_Menu
fi
#writeinCase_deleted
#case $NODEAREA in
#	1)
#	cat europe.txt
#	;;
#	2)
#	cat america.txt
#	;;
_Recall
}
#FunctionRecall
_Recall(){
echo
echo Result are listed before successfully, press "1" to reselect the Node, or press any key to exit.
read -p "Please Input here:" ACTION
if [[ $ACTION -eq 1 ]];
	then
	_Menu
else
	exit
fi
}
#Body of this script.
echo ===========================================================================
echo Testing EUROPE node, please wait...
echo ============================EUROPE Node Test============================ >europe.txt
echo >>europe.txt
echo [MADRID] >>europe.txt
ping objectstorage.eu-madrid-1.oraclecloud.com -c 4 >>europe.txt
echo Node MADRID has been tested.
echo >>europe.txt
echo [MARSEILLE] >>europe.txt
ping objectstorage.eu-marseille-1.oraclecloud.com -c 4 >>europe.txt
echo Node MARSEILLE has been tested.
echo >>europe.txt
echo [MILAN] >>europe.txt
ping objectstorage.eu-milan-1.oraclecloud.com -c 4 >>europe.txt
echo Node MILAN has been tested.
echo >>europe.txt
echo [PARIS] >>europe.txt
ping objectstorage.eu-paris-1.oraclecloud.com -c 4 >>europe.txt
echo Node PARIS has been tested.
echo >>europe.txt
echo [LONDON] >>europe.txt
ping objectstorage.uk-london-1.oraclecloud.com -c 4 >>europe.txt
echo Node LONDON has been tested.
echo >>europe.txt
echo [CARDIFF] >>europe.txt
ping objectstorage.uk-cardiff-1.oraclecloud.com -c 4 >>europe.txt
echo Node CARDIFF has been tested.
echo >>europe.txt
echo [FRANKFURT] >>europe.txt
ping objectstorage.eu-frankfurt-1.oraclecloud.com -c 4 >>europe.txt
echo Node FRANKFURT has been tested.
echo >>europe.txt
echo [ZURICH] >>europe.txt
ping objectstorage.eu-zurich-1.oraclecloud.com -c 4 >>europe.txt
echo Node ZURICH has been tested.
echo >>europe.txt
echo [AMSTERDAM] >>europe.txt
ping objectstorage.eu-amsterdam-1.oraclecloud.com -c 4 >>europe.txt
echo Node AMSTERDAM has been tested.
echo >>europe.txt
echo >>europe.txt
echo ===========================================================================
echo Testing EASTERN SEABOARD AMERICA node, please wait...
echo ============================AMERICA Node Test============================ >america.txt
echo >>america.txt
echo [ASHBURN] >>america.txt
ping objectstorage.us-ashburn-1.oraclecloud.com -c 4 >>america.txt
echo Node ASHBURN has been tested.
echo >>america.txt
echo [MONTREAL] >>america.txt
ping objectstorage.ca-montreal-1.oraclecloud.com -c 4 >>america.txt
echo Node MONTREAL has been tested.
echo >>america.txt
echo [TORONTO] >>america.txt
ping objectstorage.ca-toronto-1.oraclecloud.com -c 4 >>america.txt
echo Node TORONTO has been tested.
echo >>america.txt
echo >>america.txt
#startfunction
_Menu
