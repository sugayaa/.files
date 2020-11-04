# Defined in - @ line 1
function netbeans --description 'alias netbeans netbeans -J-Dswing.aatext=true -J-Dawt.useSystemAAFontSettings=on'
	command netbeans -J-Dswing.aatext=true -J-Dawt.useSystemAAFontSettings=on $argv &;
end
