Install-Module -Name Az.DesktopVirtualization -Force -AllowClobber -Scope CurrentUser
Install-Module -Name Az.Accounts -Force -AllowClobber -Scope CurrentUser    
Install-Module -Name Az.Resources -Force -AllowClobber -Scope CurrentUser   
Install-Module -Name Microsoft.Graph.Authentication -Force -AllowClobber -Scope CurrentUser 
Import-Module Az.DesktopVirtualization
Import-Module Az.Accounts
Import-Module Az.Resources
Import-Module Microsoft.Graph.Authentication