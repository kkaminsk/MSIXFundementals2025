$parameters = @{
    HostPoolName = '<HostPoolName>'
    ResourceGroupName = '<ResourceGroupName>'
}

Get-AzWvdMsixPackage @parameters | Select-Object DisplayName, Name