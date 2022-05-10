# Promt
Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadline

# Theme
oh-my-posh init pwsh --config C:\Users\alvar\scoop\apps\oh-my-posh\current\themes\takuya.omp.json | Invoke-Expression

# PSReadline
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig: 'C:\Program Files (x86)\Git\usr\bin\tig.exe'
Set-Alias less: 'C:\Program Files (x86)\Git\usr\bin\less.exe'
