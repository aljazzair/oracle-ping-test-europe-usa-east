@echo off
color 04
echo ===========================================================================
echo [Testing ASIA node, please wait...]
echo ============================ASIA Node Test============================ >asia.txt
echo. >>asia.txt
echo [TOKYO] >>asia.txt
ping objectstorage.ap-tokyo-1.oraclecloud.com >>asia.txt
echo Node TOKYO has been tested.

echo. >>asia.txt
@echo  [OSAKA]  >>asia.txt
ping objectstorage.ap-osaka-1.oraclecloud.com >>asia.txt
echo Node OSAKA has been tested.

echo. >>asia.txt
@echo [SEOUL] >>asia.txt
ping objectstorage.ap-seoul-1.oraclecloud.com >>asia.txt
echo Node SEOUL has been tested.

echo. >>asia.txt
@echo [CHUNCHEON] >>asia.txt
ping objectstorage.ap-chuncheon-1.oraclecloud.com >>asia.txt
echo Node CHUNCHEON has been tested.

echo. >>asia.txt
@echo [SIGNAPORE] >>asia.txt
ping objectstorage.ap-singapore-1.oci.oraclecloud.com >>asia.txt
echo Node SINGAPORE has been tested.

echo. >>asia.txt
@echo [MUMBAI] >>asia.txt
ping objectstorage.ap-mumbai-1.oraclecloud.com >>asia.txt
echo Node MUMBAI has been tested.

echo. >>asia.txt
@echo [HYDERABAD] >>asia.txt
ping objectstorage.ap-hyderabad-1.oraclecloud.com >>asia.txt
echo Node HYDERABAD has been tested.

echo ===========================================================================
echo Testing OCEANIA node, please wait...
echo ============================OCEANIA Node Test============================ >oceania.txt
echo. >>oceania.txt
@echo [SYDNEY] >>oceania.txt
ping objectstorage.ap-sydney-1.oraclecloud.com >>oceania.txt
echo Node SYDNEY has been tested.

echo. >>oceania.txt
echo [MELBOURNE] >>oceania.txt
ping objectstorage.ap-melbourne-1.oraclecloud.com >>oceania.txt
echo Node MELBOURNE has been tested.

echo ===========================================================================
echo Testing NORTH AMERICA node, please wait...
echo ============================AMERICA Node Test============================ >america.txt
echo. >>america.txt
echo [ASHBURN] >>america.txt
ping objectstorage.us-ashburn-1.oraclecloud.com >>america.txt
echo Node ASHBURN has been tested.

echo. >>america.txt
echo [PHOENIX] >>america.txt
ping objectstorage.us-phoenix-1.oraclecloud.com >>america.txt
echo Node PHOENIX has been tested.

echo. >>america.txt
echo [SANJOSE] >>america.txt
ping objectstorage.us-sanjose-1.oraclecloud.com >>america.txt
echo Node SANJOSE has been tested.

echo. >>america.txt
echo [MONTREAL] >>america.txt
ping objectstorage.ca-montreal-1.oraclecloud.com >>america.txt
echo Node MONTREAL has been tested.

echo. >>america.txt
echo [TORONTO] >>america.txt
ping objectstorage.ca-toronto-1.oraclecloud.com >>america.txt
echo Node TORONTO has been tested.

echo ===========================================================================
echo Testing EUROPE node, please wait...
echo ============================EUROPE Node Test============================ >europe.txt
echo. >>europe.txt
echo [LONDON] >>europe.txt
ping objectstorage.uk-london-1.oraclecloud.com >>europe.txt
echo Node LONDON has been tested.

echo. >>europe.txt
echo [CARDIFF] >>europe.txt
ping objectstorage.uk-cardiff-1.oraclecloud.com >>europe.txt
echo Node CARDIFF has been tested.

echo. >>europe.txt
echo [FRANKFURT] >>europe.txt
ping objectstorage.eu-frankfurt-1.oraclecloud.com >>europe.txt
echo Node FRANKFURT has been tested.

echo. >>europe.txt
echo [ZURICH] >>europe.txt
ping objectstorage.eu-zurich-1.oraclecloud.com >>europe.txt
echo Node ZURICH has been tested.

echo. >>europe.txt
echo [AMSTERDAM] >>europe.txt
ping objectstorage.eu-amsterdam-1.oraclecloud.com >>europe.txt
echo Node AMSTERDAM has been tested.

echo ===========================================================================
echo Testing MIDEAST node, please wait...
echo ============================MIDEAST Node Test============================ >mideast.txt
echo. >>mideast.txt
echo [DUBAI] >>mideast.txt
ping objectstorage.me-dubai-1.oraclecloud.com >>mideast.txt
echo Node DUBAI has been tested.

echo. >>mideast.txt
echo [JEDDAH] >>mideast.txt
ping objectstorage.me-jeddah-1.oraclecloud.com >>mideast.txt
echo Node JEDDAH has been tested.

echo ===========================================================================
echo Testing SOUTHAMERICA node, please wait...
echo ============================SOUTHAMERICA Node Test============================ >southamerica.txt
echo. >>southamerica.txt
echo [SAOPAULO] >>southamerica.txt
ping objectstorage.sa-saopaulo-1.oraclecloud.com >>southamerica.txt
echo Node SAOPAULO has been tested.

echo. >>southamerica.txt
echo [SANTIAGO]  >>southamerica.txt
ping objectstorage.sa-santiago-1.oraclecloud.com  >>southamerica.txt
echo Node SANTIAGO has been tested.

:menu
echo ===========================================================================
echo Test is completed! Please read test result in TXT file. If you want to see the result in terminal, please input numbers below:
echo 1. ASIA Node
echo 2. OCEANIA Node
echo 3. NORTH AMERICA Node
echo 4. EUROPE Node
echo 5. MIDEAST Node
echo 6. SOUTHAMERICA Node
echo 7. See all result
set /p choice="Please input:"
if "%choice%"=="1" type asia.txt
if "%choice%"=="2" type oceania.txt
if "%choice%"=="3" type america.txt
if "%choice%"=="4" type europe.txt
if "%choice%"=="5" type mideast.txt
if "%choice%"=="6" type southamerica.txt
if "%choice%"=="7" type asia.txt oceania.txt america.txt europe.txt mideast.txt southamerica.txt
echo.
echo.
echo.
echo===========================================================================
echo Result are listed before, press "1" to reselect the Node, or close the application on your will.
pause
goto menu
