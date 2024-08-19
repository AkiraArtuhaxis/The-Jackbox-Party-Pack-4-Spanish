@ECHO OFF

:: Cambiar "Picker" a "PartyPack"
CD ".\Main\games"
RENAME "Picker" "PartyPack"
:: Copiar y pegar "ArchivosEGSySwitch"
CD ..
CD ..
xcopy "ArchivosEGSySwitch" "Main" /s /y
:: Hacer versión EGS y Switch en JPP3-ES-EGS-SWITCH.zip
CD ".\Main"
DEL "jbg.config.jet"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP4-ES-EGS-SWITCH.zip" "."
:: Cambiar "PartyPack" a "Picker"
CD ".\games"
RENAME "PartyPack" "Picker"
:: Copiar y pegar "ArchivosSteam"
CD ..
CD ..
xcopy "ArchivosSteam" "Main" /s /y
:: Hacer versión Steam en JPP4-ES.zip
CD "Main"
DEL "config.jet"
:: Hacer versión Steam en JPP4-ES.zip
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../Zips/JPP4-ES.zip" "."