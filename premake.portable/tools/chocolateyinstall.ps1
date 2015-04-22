$packageName = 'premake.portable'
$url = 'http://sourceforge.net/projects/premake/files/Premake/4.3/premake-4.3-windows.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = 'd1bb552ea3cbd68a3ba8664bc6e43404e6a34de4'
$checksumType = 'sha1'
Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -checksum $checksum -checksumType $checksumType
