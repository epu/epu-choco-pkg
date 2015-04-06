# Product spawns browser URL to uninstall.html, unless UPGRADINGPRODUCTCODE is set.
# Not sure if it's worth setting this in the properties to suppress the browser launch.
# Might have other unintended consequences. -epu
$productId = '{045A6530-6BCD-49DD-BE52-4DB77958C825}'
$silentArgs = '/qn /norestart REMOVE=ALL REBOOT=ReallySuppress'
$validExitCodes = @(0)
try {
  $msiArgs = "/X$productId $silentArgs"
  Start-ChocolateyProcessAsAdmin "$msiArgs" 'msiexec'
  Write-ChocolateySuccess $package
} catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}