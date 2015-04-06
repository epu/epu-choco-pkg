$ErrorActionPreference = 'Stop';
$packageName = 'advanced-installer'
#$LCID = (Get-Culture).LCID
#$registryUninstallerKeyName = '{045A6530-6BCD-49DD-BE52-4DB77958C825}'
$installerType = 'msi'
$url = 'http://www.advancedinstaller.com/downloads/10.6/advinst.msi'
$silentArgs = '/qn /norestart'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = '3a829b06634f015076fe6b9a0cc13f1986b9c23c'
$checksumType = 'sha1'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType
