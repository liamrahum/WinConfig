try {
    winget.exe
}
catch {
    #First, install winget
    Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
    Install-Script -Name winget-install -Force
    winget-install.ps1
}
winget.exe install Git.Git 
winget.exe install JanDeDobbeleer.OhMyPosh -s winget
winget.exe install Brave.Brave
winget.exe install Discord.Discord
winget.exe install Microsoft.VisualStudioCode
winget.exe install Microsoft.PowerToys
winget.exe install Neovim.Neovim

winget.exe install MHNexus.HxD


# Configs copying
Copy-Item -Path ".\configs\PowerToysConfig.ptb" -Destination $([Environment]::GetFolderPath("MyDocuments") + "\PowerToys\Backup")
Copy-Item -Path ".\configs\zVirtualDesktop_Settings.bin" -Destination $env:APPDATA\zVirtualDesktop
Copy-Item -Path ".\configs\winconfig.omp.json" -Destination $env:LOCALAPPDATA\Programs\oh-my-posh\themes
Copy-Item -Path ".\configs\Microsoft.PowerShell_profile.ps1" -Destination $([Environment]::GetFolderPath("MyDocuments") + "\WindowsPowerShell")

# Run virtual desktops manager
.\software\zVirtualDesktop-22H2.exe

# Windows activation script
Invoke-RestMethod https://massgrave.dev/get | Invoke-Expression

# Run Chris Titus' toolbox
Invoke-RestMethod https://christitus.com/win | Invoke-Expression
