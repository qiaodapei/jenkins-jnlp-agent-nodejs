FROM  mcr.microsoft.com/windows/servercore:ltsc2019

ADD resource C:\\resource
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]
RUN iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')); \
    choco install -y jdk8;choco install -y nodejs ;choco install -y yarn;choco install -y git;choco install -y 7zip; \
	mkdir c:\jenkins_home
	

ENTRYPOINT [ "cmd", "/C", "C:\\resource\\jenkins-slave.cmd" ]