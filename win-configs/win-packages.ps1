# ================================================#
# Windows Packages:				                  #
# ================================================#
# List Of Packages:	                              #
# ================================================#
$packages = @(
    "Flow-Launcher.Flow-Launcher",
    "Alacritty.Alacritty",
    "gokcehan.lf",
    "sharkdp.fd",
    "fzf",
    "Git.Git",
    "GitHub.GitHubDesktop",
    "cURL.cURL",
    "aria2",
    "openssh",
    "Microsoft.PowerToys",
    "ajeetdsouza.zoxide",
    "BurntSushi.ripgrep.MSVC",
    "Neovim.Neovim",
    "Neovide.Neovide",
    "yt-dlp.yt-dlp",
    "7zip.7zip",
    "jqlang.jq",
    "Fastfetch-cli.Fastfetch",
    "sharkdp.bat",
    "charmbracelet.glow",
    "dbrgn.tealdeer",
    "Starship.Starship",
    "JesseDuffield.lazygit",
    "dandavison.delta",
    "Microsoft.VisualStudioCode",
    "Mozilla.Firefox",
    "Google.Chrome",
    "VideoLAN.VLC",
    "eza-community.eza",
    "LGUG2Z.komorebi",
    "LGUG2Z.whkd",
    "DEVCOM.JetBrainsMonoNerdFont"
)
# Install Winget Packages:	                      #
# ================================================#
foreach ($package in $packages) {
    Write-Host "Installing $package..."
    winget install $package --exact --silent --accept-source-agreements --accept-package-agreements
}
Write-Host "Installation of Winget packages is complete!"
# Install Scoop Package Manager:	              #
# ================================================#
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "Installing Scoop ..."
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
    scoop bucket add extras
}
# Install Scoop Packages:	                      #
# ================================================#
scoop install gcc nodejs python
Write-Host "Installation Of Scoop Packages Is Complete!"
