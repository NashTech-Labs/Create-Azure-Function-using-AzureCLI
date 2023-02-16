# Azure Cli to create function app

echo "Enter resource group name "
read rgname
echo "Enter location group name "
read locationname

echo "Enter Storgage name " 
read storgagename
echo "Enter function Name "
read functionname


# create resource group
az group create --name $rgname  --location $locationname
# create Azure storage account
az storage account create --name $storgagename --location $locationname --resource-group $rgname --sku Standard_LRS
# create Azure functionapp
az functionapp create --resource-group $rgname --consumption-plan-location $locationname --runtime dotnet  --functions-version 4 --name $functionname --storage-account $storgagename --os-type Linux

