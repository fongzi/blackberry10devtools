set x to choose folder with prompt "Select your BlackBerry WebWorks bin folder"
set unixbbpath to quoted form of the POSIX path of x
set y to choose file with prompt "Select your debug token" of type "bar"
set unixbbtokenpath to quoted form of the POSIX path of y
set bbip to display dialog "Enter your device IP address" default answer "0.0.0.0"
set bbiptext to text returned of bbip
set bbpw to display dialog "Enter your device password" default answer "****" with hidden answer
set bbpwtext to text returned of bbpw
set returncmd to do shell script "." & unixbbpath & "blackberry-deploy -installDebugToken " & unixbbtokenpath & " -device " & bbiptext & " -password " & bbpwtext
