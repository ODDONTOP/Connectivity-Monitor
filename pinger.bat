@echo off
title Pinger ~ discord: odd3_
cls
color D

echo [!] Fetching connection details...
for /f "delims=" %%a in ('powershell -command "(Invoke-RestMethod http://ip-api.com/json).city"') do set "usercity=%%a"

echo ========================================
echo YOUR CURRENT CITY: %usercity%
echo ========================================
echo.
set /p "choice=If this is your city, enable a VPN and restart (y/n): "

if /I "%choice%" NEQ "y" exit

:menu
cls
color D
echo ###############################################################
echo #############ds+/:----:/oyd#############  ####  ####  #### 
echo ###########y/```      ````../y###########  #  #  #   #  #  #
echo #########d/.`             `--/d#########  #  #  #   #  #  #
echo ########d-.`               .:-:h########  ####  ####  #### 
echo ########o.``       ````    `-:::o######## 
echo ########/..``   ````..`````-//::+########      ####  #  #
echo ########+:::```````..````.::++/+########      #  #  ## #
echo ########o-::+ydddy.---oyyo+:+s/s########      ####  # ##
echo ########y-:-######d:--y######:s/h####### 
echo #########:/.y#dy/../+-sd###d.os#########  #####  ###  #### 
echo #########/.`.--:..+hd:---//-:oy#########    #   #   # #  # 
echo ##########y://::--#sds---..:oy##########    #   #   # #### 
echo ###########+-hy-..::/---od/+############    #   #   # #    
echo ###########o.:s-......--///o############    #    ###  #    
echo ###########s-.........:///+y############
echo ############y.```....-/::oyd############
echo #############d+`    -.-:od##############
echo ###############do-..:/y#################
echo ###############################################################   
echo                ~ Discord: odd3_ ~ 
echo      ~ Use of this tool is at your own risk ~
echo  ~ I am not responsible for any illegal actions taken ~
echo               ~ CTRL+C TO EXIT ( or use to pause ) ~            
echo ======================================== 
set /p x=Enter IP Here: 
echo ========================================================

:top
PING -n 1 %x% | FIND "TTL=" >nul
IF ERRORLEVEL 1 (
    echo [%time%] IP: %x% is OFFLINE 
) ELSE (
    echo [%time%] IP: %x% is ONLINE
)
set /a ZULA=(%Random%%%9)+1
color %ZULA%
ping -n 2 127.0.0.1 >nul
GoTo top
