#Connect to Azure
Connect-AzAccount

#Current Version
$PSVersionTable.PSVersion

#ExecutionPolicy 
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

#Install
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery -Force

#Create RG
New-AzResourceGroup -Naem RG01 -Location "CanadaCentral"
