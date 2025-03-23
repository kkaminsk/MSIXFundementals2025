$parameters = @{
    HostPoolName = '<HostPoolName>'
    ResourceGroupName = '<ResourceGroupName>'
}

$msixPackages = Get-AzWvdMsixPackage @parameters
$hostPoolId = (Get-AzWvdHostPool @parameters).Id

$logFilePath = "C:\Temp\MsixToAppAttach.log"

$parameters = @{
    IsActive = $true
    DeactivateOrigin = $true
    PermissionSource = 'DAG'
    HostPoolsForNewPackage = $hostPoolId
    PassThru = $true
    LogInJSON = $true
    LogFilePath = $LogFilePath
}

$msixPackages | .\Migrate-MsixPackagesToAppAttach.ps1 @parameters