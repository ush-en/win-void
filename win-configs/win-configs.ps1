# =============================================================================== #
# Windows Config:				                                                          #
# =============================================================================== #
# =============================================================================== #
# HOME:						                                                                #
# =============================================================================== #
Copy-Item -Path $Env:USERPROFILE\win-void\win-dotfiles\home\* -Destination $Env:USERPROFILE\ -Recurse -Force
# =============================================================================== #
# Config:					                                                                #
# =============================================================================== #
if (-Not (Test-Path -Path $Env:USERPROFILE\.config)) {
    New-Item -Path $Env:USERPROFILE\.config -ItemType Directory | Out-Null
}
Copy-Item -Path $Env:USERPROFILE\win-void\win-dotfiles\cfg\* -Destination $Env:USERPROFILE\.config\ -Recurse -Force
# =============================================================================== #
# AppData:					                                                              #
# =============================================================================== #
if (-Not (Test-Path -Path $Env:localAppData)) {
    New-Item -Path $Env:localAppData -ItemType Directory | Out-Null
}
if (-Not (Test-Path -Path $Env:AppData)) {
    New-Item -Path $Env:AppData -ItemType Directory | Out-Null
}
Copy-Item -Path $Env:USERPROFILE\win-void\win-dotfiles\app\roming\* -Destination $Env:AppData\ -Recurse -Force
Copy-Item -Path $Env:USERPROFILE\win-void\win-dotfiles\app\roming\Code\User\* -Destination $Env:USERPROFILE\scoop\apps\vscode\current\data\user-data\User -Recurse -Force
Copy-Item -Path $Env:USERPROFILE\win-void\win-dotfiles\app\roming\mpv\* -Destination $Env:USERPROFILE\scoop\persist\mpv\portable_config -Recurse -Force
Copy-Item -Path $Env:USERPROFILE\win-void\win-dotfiles\app\local\* -Destination $Env:localAppData\ -Recurse -Force
# =============================================================================== #
# Others:					                                                                #
# =============================================================================== #
Copy-Item -Path $Env:USERPROFILE\win-void\win-dotfiles\others\wt\LocalState\* -Destination $Env:USERPROFILE\scoop\persist\windows-terminal\settings -Recurse -Force
