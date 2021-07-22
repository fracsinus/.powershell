# %USERPROFILE%\Documents\WindowsPowerShell\profile.ps1
# If Get-ExecutionPolicy is 'AllSigned', sign this script before use (Set-AuthenticodeSignature)

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
 Import-Module "$ChocolateyProfile"
}

Set-PSReadLineKeyHandler -key Ctrl+d -function ViExit  # Ctrl+d: exits the shell
# Set-PSReadLineKeyHandler -key Ctrl+u -function ViYankBeginningOfLine  # Ctrl+d to quit shell
Set-PSReadLineKeyHandler -key Ctrl+a -function BeginningOfLine  # Ctrl+a: move cursor to the beginning of the line
Set-PSReadLineKeyHandler -key Ctrl+e -function EndOfLine  # Ctrl+e: move cursor to the end of the line

. $PSScriptRoot\aliases.ps1  # Load aliases
