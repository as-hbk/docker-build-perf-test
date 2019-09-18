FROM mcr.microsoft.com/windows/servercore:1809

SHELL ["powershell", "-NoProfile", "-NoLogo", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

COPY make_random_files_of_specific_size.ps1 /temp/make_random_files_of_specific_size.ps1
RUN "C:\temp\make_random_files_of_specific_size.ps1"

ENTRYPOINT powershell.exe
