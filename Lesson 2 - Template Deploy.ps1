#Deploy templates from GitHub

#Variables
$RG = "L2RG01"
$Location = "CanadaCentral"

#Create RG
New-AzResourceGroup -Name $RG -Location $Location 

#Deploy template
New-AzResourceGroupDeployment -ResourceGroupName $RG -TemplateUri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/quickstarts/microsoft.compute/vm-simple-windows/azuredeploy.json