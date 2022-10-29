# Install Chocolatey
Write-Output "Installing chocolatey..."
$testchoco = powershell choco -v
if (-not($testchoco)) {
	Write-Output "Seems Chocolatey is not installed, installing now"
	Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
else {
	Write-Output "Chocolatey Version $testchoco is already installed"
}

# First disable prompt
Write-Output "Disabling prompt for every installation..."
choco feature enable -n=allowGlobalConfirmation

# Enable WSl
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# Installing WSL2
wsl --install
# Update WSL2 anyway
wsl --update

# SSH starting
Set-Service ssh-agent -StartupType Automatic
git config --global core.sshCommand C:/Windows/System32/OpenSSH/ssh.exe
cmd.exe /c "sc config ssh-agent start=auto"
cmd.exe /c "net start ssh-agent"

# Network performance improvement
netsh winsock reset
netsh int tcp set global autotuninglevel=normal

Write-Output "Reboot your device to finish"