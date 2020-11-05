
$ScriptPath = [system.io.path]::GetDirectoryName($PSCommandPath)

Write-host "$scriptpath"

Write-host "Writing dummy file to the c:\testfile.txt"
"hello world " | out-file "c:\testfile.txt"

