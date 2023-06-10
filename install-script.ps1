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
winget.exe install Microsoft.VisualStudio.2022.Community
winget.exe install Microsoft.VisualStudioCode
winget.exe install Microsoft.PowerToys
winget.exe install Neovim.Neovim

New-Item -Path $env:POSH_THEMES_PATH/winconfig-theme.omp.json -ItemType SymbolicLink -Value .\winconfig.omp.json