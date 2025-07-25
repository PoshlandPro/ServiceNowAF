# To enable ssh & remote debugging on app service change the base image to the one below
# FROM mcr.microsoft.com/azure-functions/powershell:4-powershell7.2-appservice
FROM mcr.microsoft.com/azure-functions/powershell:4-powershell7.4
ENV AzureWebJobsScriptRoot=/home/site/wwwroot \
    AzureFunctionsJobHost__Logging__Console__IsEnabled=true

COPY ./src /home/site/wwwroot