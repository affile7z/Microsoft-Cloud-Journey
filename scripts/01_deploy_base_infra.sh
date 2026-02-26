$RGName = "RG-Lab-Qatar-01"
$Location = "qatarcentral"
$Tags = @{
    Owner       = "Bogdan"
    Project     = "Cloud-Security-Lab"
    Environment = "Dev"
}

Connect-AzAccount

Write-Host "Deploying Resource Group..." -ForegroundColor Cyan
New-AzResourceGroup -Name $RGName -Location $Location -Tag $Tags

Write-Host "Deployment Summary:" -ForegroundColor Green
Get-AzResourceGroup -Name $RGName | Select-Object ResourceGroupName, Location, ProvisioningState
