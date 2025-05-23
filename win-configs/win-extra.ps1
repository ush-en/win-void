# =============================================================================== #
# List Packages:      		                                                        #
# =============================================================================== #
$packages=@(
    # PACKAGE MANAGER:                                                                #
    # =============================================================================== #
    "bun",
    "yarn",
    "pnpm"
    # LANGUGE SERVER PORTOCOL:                                                        #
    # =============================================================================== #
    "vscode-langservers-extracted",
    "@vtsls/language-server",
    "@olrtg/emmet-language-server",
    "@tailwindcss/language-server",
    "@prisma/language-server",
    "prettier"
)
# =============================================================================== #
# NPM Packages:      		                                                          #
# =============================================================================== #
foreach ($package in $packages) {
        Write-Host "Installing $package..."
        npm install -g $package
}
Write-Host "Installation Of NPM Packages Is Complete!"
