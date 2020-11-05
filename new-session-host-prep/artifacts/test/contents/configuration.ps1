configuration NewHostPrep
{
    $rdshIsServer = $true
    $ScriptPath = [system.io.path]::GetDirectoryName($PSCommandPath)

    Node localhost
    {
        LocalConfigurationManager
        {
            RebootNodeIfNeeded = $true
            ConfigurationMode = "ApplyOnly"
        }

        Script ExecuteRdAgentInstallServer
        {
            GetScript = {
                return @{'Result' = ''}
            }x
            SetScript = {
                & "$using:ScriptPath\Script-NewHostPrep.ps1"
            }
            TestScript = {
                return (Test-path "C:\testfile.txt")
            }
        }
    }

}
