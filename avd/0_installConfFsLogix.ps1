write-host 'AIB Customization: Downloading FsLogix'
New-Item -Path C:\ -Name fslogix -ItemType Directory -ErrorAction SilentlyContinue
$LocalPath = 'C:\fslogix'
Invoke-WebRequest -Uri 'https://aka.ms/fslogix_download' -OutFile 'c:\fslogix\fslogix.zip'
Start-Sleep -Seconds 10
write-host 'AIB Customization: Download Fslogix installer finished'
Expand-Archive -Path 'C:\fslogix\fslogix.zip' -DestinationPath 'C:\fslogix\installer\'  -Force
write-host 'AIB Customization: Start Fslogix installer'
Invoke-Expression -Command 'C:\fslogix\installer\x64\Release\FSLogixAppsSetup.exe /install /quiet /norestart'
write-host 'AIB Customization: Finished Fslogix installer' 
