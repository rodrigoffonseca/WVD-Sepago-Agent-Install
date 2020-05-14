#Deploy Sepago Monitoring Agent
$sitePathzip = "C:\Program Files\zip"
$output = "$sitePath\app.zip"
$sitePath = "C:\Program Files"
$url = "https://safocainfra.blob.core.windows.net/wvd-agent/ITPC-LogAnalyticsAgent.zip"
New-Item -ItemType Directory $sitePathzip -Force
(New-Object System.Net.WebClient).DownloadFile($url, $output)
Expand-Archive -Path $output -DestinationPath $sitePath -Force
cd 'C:\Program Files\ITPC-LogAnalyticsAgent'
.\ITPC-LogAnalyticsAgent.exe -install