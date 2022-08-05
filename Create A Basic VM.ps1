#Create a Basic default VM

#Variables
$ResourceGroup = "L2"
$location = "CanadaCentral"
$VMName = "vm1"
$VNet = "vnet1"
$subnet = "subnet1"


#Create a Resource Group
New-AzResourceGroup -Name $ResourceGroup -Location $location

#Create a VM
New-AzVm `
    -ResourceGroupName $ResourceGroup `
    -Name $VMName `
    -Location $location `
    -VirtualNetworkName $VNet `
    -SubnetName $subnet `
    -SecurityGroupName "NSG1" `
    -PublicIpAddressName "PublicIp1" 

#Delete the Resource Group
Remove-AZResourceGroup -Name $ResourceGroup -Force
    
