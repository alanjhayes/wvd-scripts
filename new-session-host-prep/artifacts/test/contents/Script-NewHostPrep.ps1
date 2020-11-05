
$ScriptPath   = [system.io.path]::GetDirectoryName($PSCommandPath)
$testfile     = "c:\testfile.txt"

Write-host "$scriptpath"
Write-host "Writing dummy file to the $testfile"

"hello world " | out-file $testfile
"$scriptpath"  | out-file $testfile -append
"$(get-date)"  | out-file $testfile -append

