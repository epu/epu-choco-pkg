$ErrorActionPreference = 'Stop';
$packageName = 'gnuwin32-coreutils.install'
$registryUninstallerKeyName = 'CoreUtils-5.3.0_is1' # Is the suffix _is1 standard?
$installerType = 'exe'
$silentArgs = '/VERYSILENT /NORESTART'
$validExitCodes = @(0)
$osBitness = Get-ProcessorBits
if ($osBitness -eq 64) {
  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
} else {
  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
} 
Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $file
