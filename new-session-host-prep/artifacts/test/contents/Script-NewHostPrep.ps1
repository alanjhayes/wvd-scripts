
$ScriptPath = [system.io.path]::GetDirectoryName($PSCommandPath)

# Dot sourcing Functions.ps1 file
. (Join-Path $ScriptPath "Functions.ps1")


Write-Log -Message "Writing dummy file to the c:\testfile.txt"
"hello world " | out-file "c:\testfile.txt"

