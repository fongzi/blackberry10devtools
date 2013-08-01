set x to choose folder with prompt "Select your BlackBerry WebWorks bin folder"
set unixbbpath to quoted form of the POSIX path of x
set bbks to display dialog "Enter your Keystore Password" default answer "****" with hidden answer
set bbkstext to text returned of bbks
set bbpin to display dialog "Enter your device pin (type \"mypin\" and space in any text field in your device)" default answer "****" with hidden answer
set bbpintext to text returned of bbpin
set y to choose folder with prompt "Select a folder to store your debug token"
set unixbbypath to quoted form of the POSIX path of y
set bbdebugtoken to display dialog "Type a name for your debug token file" default answer "Untitled.bar"
set bbdebugtokentext to quoted form of the text returned of bbdebugtoken
do shell script "." & unixbbpath & "blackberry-debugtokenrequest -storepass " & bbkstext & " -devicepin " & bbpintext & " " & unixbbypath & bbdebugtokentext
