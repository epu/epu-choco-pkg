$ErrorActionPreference = 'Stop';
$packageName = 'gnuwin32-coreutils.install'
$installerType = 'exe'
$url = 'http://sourceforge.net/projects/gnuwin32/files/coreutils/5.3.0/coreutils-5.3.0.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART' #InnoSetup
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = '5a3e9d30b906dadf54de0635522fd62c'
$checksumType = 'md5'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType
