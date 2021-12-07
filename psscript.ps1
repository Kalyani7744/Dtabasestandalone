Param (
    [Parameter(Mandatory = $true)]
    [string]

    $AzureUserName,
    [string]

    $AzurePassword,
    [string]
    
    $AzureTenantID,
    [string]
    
    $AzureSubscriptionID,
    [string]
    
    $ODLID,
    [string]
    
    $DeploymentID,
    [string]
    
    $azuserobjectid,
    [string]

    $InstallCloudLabsShadow,
    [string]

    [string]
    $vmAdminUsername,

    $trainerUserName,

    [string]
    $trainerUserPassword

)

Start-Transcript -Path C:\WindowsAzure\Logs\CloudLabsCustomScriptExtension.txt -Append
[Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls" 
$adminUsername = "demouser"

#Import Common Functions
$path = pwd
$path=$path.Path
$commonscriptpath = "$path" + "\cloudlabs-common\cloudlabs-windows-functions.ps1"
. $commonscriptpath

# Run Imported functions from cloudlabs-windows-functions.ps1
WindowsServerCommon
InstallCloudLabsShadow $ODLID $InstallCloudLabsShadow
CreateCredFile $AzureUserName $AzurePassword $AzureTenantID $AzureSubscriptionID $DeploymentID $azuserobjectid

sleep 10



Stop-Transcript
Restart-Computer -Force 
