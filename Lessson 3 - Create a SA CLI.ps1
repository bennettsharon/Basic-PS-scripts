#Create a SA using CLI

#Login into Azure
az login

#Create a Resource Group
az group create \
  --name storage-resource-group \
  --location eastus

#Create a Storage Account
az storage account create \
  --name sbennettjuly6 \
  --resource-group storage-resource-group \
  --location eastus \
  --sku Standard_RAGRS \
  --kind StorageV2


#Delete SA
az storage account delete --name sbennettjuly6 --resource-group storage-resource-group