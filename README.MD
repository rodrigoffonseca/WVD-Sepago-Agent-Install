# WVD Sepago Monitoring Agent Installation scripts

## DISCLAIMER
This script is provided as sample and must not be used in production environment without previous customizations and tests.

## Overview

 The objective of these scripts is help you to install SEPAGO WVD Monitoring Agent on Azure VM HostPool that's already up and running using Powershell Extensions.

In order to successful complete the instalation you need:

- Install "Azure Monitor for RDS and Windows Virtual Desktop from SEPAGO" on Azure Portal. It will create a Log Analytics Workspace with Sepago Solution,

- Download SEPAGO Monitoring agent from: http://loganalytics.sepago.com/download.html

- Review detailed installation steps and pre-requisites: http://loganalytics.sepago.com/installation.html

- Customize your agent config file (ITPC-LogAnalyticsAgent.exe.config) with your Log Analytics Workspace ID and Access Key

- Zip your customized agent and upload it to an Azure Blob Storage container

- Customize powershell installation script "deploy-WVD-Agent.ps1" and change $url variable to point to your Storage Account URL (defined on previous step)

- Upload powershell installation script "deploy-WVD-Agent.ps1" to an Azure blob storage container. 

- Customize powershell extension script "Install-Agent-Vms.ps1" and change $scriptfileurl to your Storage Account URL (defined on previous step)

- Customize powershell extension script "Install-Agent-Vms.ps1" and change $rgname to your Host Pool Resource Group Name

- Customize powershell extension script "Install-Agent-Vms.ps1" and change subscriptions parameter to your Subscription ID

- Run powershell extension script "Install-Agent-Vms.ps1" on your local machine or Azure Cloud Shell.

