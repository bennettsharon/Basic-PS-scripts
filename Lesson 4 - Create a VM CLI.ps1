#Create a vm CLI

#Create the resource group
az group create --name clivm --location canadacentral

#create the RG
az vm create \
    --resource-group clivm \
    --name myVMCLI \
    --image Win2022AzureEditionCore \
    --public-ip-sku Standard \
    --admin-username sharon

#Install IIS
az vm run-command invoke -g clivm -n myVMCLI --command-id RunPowerShellScript --scripts "Install-WindowsFeature -name Web-Server -IncludeManagementTools"

#Open port 80
az vm open-port --port 80 --resource-group clivm --name myVMCLI

#List all images 
az vm image list --all

#Delete resources
az group delete --name clivm