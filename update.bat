@echo off
echo *** Updating requirements ***
pip3 install -r requirements.txt
echo \n
echo *** Cleaning Old Binaries Browser ***
rfbrowser clean-node
echo \n
echo *** Updating Binaries Browser ***
rfbrowser init