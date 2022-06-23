oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\takuya.omp.json" | Invoke-Expression
Import-Module Terminal-Icons

Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr
Set-Alias glog GitLog

function GitLog { & git log --oneline }

function which($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
