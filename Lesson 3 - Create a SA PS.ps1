#Create a Storage account

#Connect to Azure
Connect-AzAccount

#Variables
$resourceGroup = "SAPS"
$location = "CanadaEast"
$storageaccount = "sbennettjuly6sa2"

#Create a resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

#Create a storage account
New-AzStorageAccount -ResourceGroupName $resourceGroup `
  -Name sbennettjuly6sa2 `
  -Location $location `
  -SkuName Standard_RAGRS `
  -Kind StorageV2

#Delete the storage account
Remove-AzStorageAccount -Name $storageaccount -ResourceGroupName $resourcegroup