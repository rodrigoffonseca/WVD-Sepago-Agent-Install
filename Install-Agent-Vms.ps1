$rgname = "RG-Foca-Infra"
#$scripturl = "https://safocainfra.blob.core.windows.net/wvd-agent/test-WVD-agent.ps1"
#$scriptfile = "test-WVD-agent.ps1"
$scriptfile = "deploy-WVD-agent.ps1"
$scripturl = "https://safocainfra.blob.core.windows.net/wvd-agent/deploy-WVD-Agent.ps1"
$location = "eastus"
Connect-AzAccount
Select-AzSubscription -Subscription "cce01445-8719-4563-b5b7-37b26250b020" -Scope CurrentUser -Force -Tenant 
Set-AzContext -Subscription "cce01445-8719-4563-b5b7-37b26250b020"
Get-AzVM -ResourceGroupName $rgname | %{Set-AzVMCustomScriptExtension -ResourceGroupName $rgname -VMName $_.Name -FileUri $scripturl -Name "Deploy-Agent" -Run $scriptfile -Location $location -NoWait} 