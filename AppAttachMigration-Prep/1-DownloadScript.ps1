$url = "https://raw.githubusercontent.com/Azure/RDS-Templates/master/msix-app-attach/MigrationScript/Migrate-MsixPackagesToAppAttach.ps1"
$filename = $url.Split('/')[-1]

Invoke-WebRequest -Uri $url -OutFile $filename | Unblock-File