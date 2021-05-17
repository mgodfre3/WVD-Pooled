

//Create Parameters
param resourceGroupPrefrix string = 'Activate-WVD-'


//Define Networking deployment parameters
param vnetName string = 'wvd-vnet'
param vnetaddressPrefix string ='10.0.0.0/15'
param subnetPrefix string = '10.0.1.0/24'
param vnetLocation string = 'EastUS'
param subnetName string = 'sessionhost-subnet'



//Create VNet
module createvnet '1.1%20Create%20VNet.bicep'={
name:wvdinfra
params:{
  vnetName:vnetName
  vnetAddressPrefix: vnetaddressPrefix
  subnetPrefix : subnetPrefix
  vnetLocation : vnetLocation
  subnetName : subnetName
}



}
