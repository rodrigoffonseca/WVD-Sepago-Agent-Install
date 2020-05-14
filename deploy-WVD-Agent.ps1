#You running this script/function means you will not blame the author(s) if this breaks your stuff. 
#This script/function is provided AS IS without warranty of any kind. 
#Author(s) disclaim all implied warranties including, without limitation, any implied warranties of merchantability or of fitness for a 
#particular purpose. The entire risk arising out of the use or performance of the sample scripts and documentation remains with you. 
#In no event shall author(s) be held liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or other pecuniary loss) arising out of the use of or inability to use the script or documentation. 
#Neither this script/function, nor any part of it other than those parts that are explicitly copied from others, may be republished without author(s) express written permission. Author(s) retain the right to alter this disclaimer at any time. For the most up to date version of the disclaimer, see https://ucunleashed.com/code-disclaimer.

 #Deploy Sepago Monitoring Agent
$sitePathzip = "C:\Program Files\zip"
$output = "$sitePath\app.zip"
$sitePath = "C:\Program Files"
# Change the URL to your Sepago Agent (with customized workspace ID and Access Key) download location
$url = "https://safocainfra.blob.core.windows.net/wvd-agent/ITPC-LogAnalyticsAgent.zip" #This is just a sample agent customized with my Log Analytics Workspace ID and Access Key and should not be used by any customer in production, you MUST replace it by your own Agent.
New-Item -ItemType Directory $sitePathzip -Force
(New-Object System.Net.WebClient).DownloadFile($url, $output)
Expand-Archive -Path $output -DestinationPath $sitePath -Force
cd 'C:\Program Files\ITPC-LogAnalyticsAgent'
.\ITPC-LogAnalyticsAgent.exe -install
