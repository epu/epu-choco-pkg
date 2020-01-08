$ErrorActionPreference = 'Stop';
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
	packageName    = 'advanced-installer'
	installerType  = 'MSI'
	url            = 'https://www.advancedinstaller.com/downloads/16.6.1/advinst.msi'
	silentArgs     = '/qn /norestart'
	validExitCodes = @(0)
	checksum       = '4e6be0fc03949c53f28c343be9665abd46986e33eb0262b7c3cb6e1c16ddb7af'
	checksumType   = 'sha256'
}
Install-ChocolateyPackage @packageArgs