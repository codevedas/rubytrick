require "win32ole"
wsh = WIN32OLE.new("WScript.Shell")
 #system('start /wait chrome "www.google.com"')
 wsh.Run("chrome www.google.com")
     while 1
   if wsh.AppActivate('chrome')
   sleep 3
	wsh.SendKeys('^+t^+t^+t')
	break;
	else 
	sleep 1
	end
end
 
 