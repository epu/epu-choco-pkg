$ErrorActionPreference = 'Stop';
$packageName = 'advanced-installer'
$productId = '{045A6530-6BCD-49DD-BE52-4DB77958C825}'
$installerType = 'msi'
$silentArgs = '/qn /norestart REMOVE=ALL REBOOT=ReallySuppress'
$validExitCodes = @(0)
$osBitness = Get-ProcessorBits
if ($osBitness -eq 64) {
  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$productId").UninstallString
} else {
  $file = (Get-ItemProperty -Path "hklm:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$productId").UninstallString
}
Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $file
# But see the MIT licensed version of this hipchat uninstall script.
# https://github.com/Iristyle/ChocolateyPackages/blob/master/HipChat/tools/chocolateyUninstall.ps1
#try {
#  # http://stackoverflow.com/questions/450027/uninstalling-an-msi-file-from-the-command-line-without-using-msiexec
#  $msiArgs = "/X$productId $silentArgs"
#  Start-ChocolateyProcessAsAdmin "$msiArgs" 'msiexec'
#  Write-ChocolateySuccess $package
#} catch {
#  Write-ChocolateyFailure $package "$($_.Exception.Message)"
#  throw
#}