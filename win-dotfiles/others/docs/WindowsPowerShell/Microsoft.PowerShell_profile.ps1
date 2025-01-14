# ======================================================#
# VI Mode : 						                    #
# ======================================================#
function OnViModeChange {
    if ($args[0] -eq 'Command') {
        # Set the cursor to a block.
        Write-Host -NoNewLine "`e[2 q"
    } else {
        # Set the cursor to a line.
        Write-Host -NoNewLine "`e[6 q"
    }
}
Set-PSReadlineOption -EditMode vi
Set-PSReadLineOption -ViModeIndicator Script -ViModeChangeHandler $Function:OnViModeChange

# ======================================================#
# ENV: 						                            #
# ======================================================#
$Env:KOMOREBI_CONFIG_HOME = 'C:\Users\LLI\.config\komorebi'
$Env:EDITOR = "nvim.exe"
$Env:VISUAL = "code"
$Env:PAGER = "delta"
$Env:VIRTUAL_ENV_DISABLE_PROMPT = 1
$Env:CMAKE_EXPORT_COMPILE_COMMANDS="ON"
function Append-Path($path) {
    $Env:PATH += "$path;"
}

function Prepend-Path($path) {
    $Env:PATH = "$path;$Env:PATH"
}

Append-Path "$Env:APPDATA\npm\"
Append-Path "C:\Program Files\Git\bin"

# ======================================================#
# Starship && Zoxide : 					                #
# ======================================================#
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# ======================================================#
# Alias : 						                        #
# ======================================================#
# Easier Navigation:
#Remove-Alias -Name cd
#New-Alias -Name cd -Value z -Option AllScope
${function:drop} = { Set-Location ~\Documents\Dropbox }
${function:dt} = { Set-Location ~\Desktop }
${function:docs} = { Set-Location ~\Documents }
${function:dl} = { Set-Location ~\Downloads }
# Directory Listing: Use `eza.exe` if available:
rm alias:ls -ErrorAction SilentlyContinue
${function:ls} = { eza.exe --long --group --icons=auto --git --sort=name --group-directories-first @args }
${function:l} = { eza.exe --long --group --icons=auto --git --sort=name --group-directories-first @args }
${function:la} = { eza -la @args--group --icons=auto --git --sort=name --group-directories-first @args }
${function:lsd} = { Get-ChildItem -Directory -Force @args }
# Git :                                                 #
function gs { git status -s }
function ga { git add . }
function gd { git diff --oneline --graph --all -10 }
function gc { param($m) git commit -m "$m" }
function gp { git push -uf origin main}
function gi { git init }
function gcl { git clone "$args" }
