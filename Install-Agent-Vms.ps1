#You running this script/function means you will not blame the author(s) if this breaks your stuff. 
#This script/function is provided AS IS without warranty of any kind. 
#Author(s) disclaim all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a 
#particular purpose. The entire risk arising out of the use or performance of the sample scripts and documentation remains with you. 
#In no event shall author(s) be held liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the script or documentation. 
#Neither this script/function, nor any part of it other than those parts that are explicitly copied from others, may be republished without author(s) express written permission. Author(s) retain the right to alter this disclaimer at any time. For the most up to date version of the disclaimer, see https://ucunleashed.com/code-disclaimer.
$rgname = "ENTER-YOUR-HOSTPOOL-RESOURCE-GROUP"
$scriptfile = "deploy-WVD-agent.ps1"
$scripturl = "https://safocainfra.blob.core.windows.net/wvd-agent/deploy-WVD-Agent.ps1" #Upload the deploy script to one of your storage accounts with your custom parameters
$location = "eastus"
Connect-AzAccount
Select-AzSubscription -Subscription "ENTER-YOUR-SUBSCRIPTION-ID" -Scope CurrentUser -Force -Tenant 
Set-AzContext -Subscription "ENTER-YOUR-SUBSCRIPTION-ID"
Get-AzVM -ResourceGroupName $rgname | %{Set-AzVMCustomScriptExtension -ResourceGroupName $rgname -VMName $_.Name -FileUri $scripturl -Name "Deploy-Agent" -Run $scriptfile -Location $location -NoWait} 
