# setEXEtoService
用來快速將EXE檔案變成WINDOW服務的小工具<br/>
<br/>
設定服務:<br/>
  將所要變成服務的EXE檔案拖到 _setService.bat 上面放開，<br/>
  bat會詢問所要生成的服務名稱預設為應用程式名稱後綴Service字樣(e.g. appService)，<br/>
  ENTER後bat會複製"_unsetService.bat","instsrv.exe","srvany.exe"，<br/>
  及生成一個對應服務名稱的EXE檔(e.g. appService.exe)到原應用的目錄底下，<br/>
  並在註冊檔中寫入應用服務的檔案位置，<br/>
  HKLM\SYSTEM\CurrentControlSet\services\%input%\Parameters /v Application /d "%~1"。<br/>
<br/>
解除服務:<br/>
  將之前生程的應用服務(e.g. appService.exe)拖到同目錄下的"_unsetService.bat"上放開，<br/>
  即可解除服務並清除相關檔案及機碼。<br/>
<br/>
其他說明:<br/>
  使用 Windows Server 2003 Resource Kit Tools 中的 instsrv.exe 和 srvany.exe<br/>

