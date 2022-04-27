# setEXEtoService
用來快速將EXE檔案變成WINDOW服務的小工具

設定服務
/*****************************************/
將所要變成服務的EXE檔案拖到 _setService.bat 上面放開
bat會詢問所要生成的服務名稱預設為應用程式名稱後綴Service字樣(e.g. appService)
ENTER後bat會複製"_unsetService.bat","instsrv.exe","srvany.exe"
及生成一個對應服務名稱的EXE檔(e.g. appService.exe)到原應用的目錄下
並在註冊檔中寫入應用服務的檔案位置
HKLM\SYSTEM\CurrentControlSet\services\%input%\Parameters /v Application /d "%~1"
/*****************************************/

解除服務
/*****************************************/
將之前生程的應用服務(e.g. appService.exe)拖到同目錄下的"_unsetService.bat"上放開
即可解除服務並清除相關檔案及機碼
/*****************************************/

其他說明
/*****************************************/
使用 Windows Server 2003 Resource Kit Tools 中的 instsrv.exe 和 srvany.exe

