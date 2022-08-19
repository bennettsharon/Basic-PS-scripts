#Create a vnet

#Variable
$RG = 'VNetPS'
$Location = 'CanadaCentral'

#Create Resource Group
New-AzResourceGroup $RG -Location $location


$myVNet2 = New-AzVirtualNetwork -ResourceGroupName $RG `
 -Location $Location `
 -Name myVNet2 `
 -AddressPrefix 10.0.0.0/16

#Verify the vnet
Get-AzVirtualNetwork -Name myVNet2

#Create a subnet
$mySubnet2 = Add-AzVirtualNetworkSubnetConfig -Name mySubnet2 -AddressPrefix 10.0.0.0/24 -VirtualNetwork $myVNet2

#Verify subnet configuration
Get-AzVirtualNetworkSubnetConfig -Name mySubnet2 -VirtualNetwork $myVNet2

#Associate Subnet
$mySubnet2 | Set-AzVirtualNetwork