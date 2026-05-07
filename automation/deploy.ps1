param(
  [string]$ResourceGroupName = 'rg-intern-sec-01',
  [string]$Location = 'eastus',
  [string]$TemplateFile = 'automation/main.bicep',
  [string]$ParameterFile = 'automation/parameters.json'
)

Write-Host "Creating or updating resource group: $ResourceGroupName in $Location"
az group create --name $ResourceGroupName --location $Location | Out-Null

Write-Host "Deploying the secure Azure environment using Bicep..."
az deployment group create --resource-group $ResourceGroupName --template-file $TemplateFile --parameters @$ParameterFile

Write-Host "Deployment complete."
