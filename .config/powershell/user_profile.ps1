# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

# Promt
Import-Module posh-git
Import-Module -Name Terminal-Icons
Import-Module -Name PSReadline

# Theme
oh-my-posh init pwsh --config C:\Users\alvar\.config\oh-my-posh\themes\oberon.omp.json | Invoke-Expression

# PSReadline
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -EditMode Windows #Emacs 

# PSFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig: 'C:\Program Files (x86)\Git\usr\bin\tig.exe'
Set-Alias less: 'C:\Program Files (x86)\Git\usr\bin\less.exe'

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}