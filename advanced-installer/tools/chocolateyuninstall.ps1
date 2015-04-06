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