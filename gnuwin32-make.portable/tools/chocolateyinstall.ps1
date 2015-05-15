# Ugh. Requires a dep zip also. make-3.81-dep.zip
$ErrorActionPreference = 'Stop';
$packageName = 'gnuwin32-make.portable'
$url = 'http://sourceforge.net/projects/gnuwin32/files/make/3.81/make-3.81-bin.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = '3521948bc27a31d1ade0dcb23be16d49'
$checksumType = 'md5'
Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -checksum $checksum -checksumType $checksumType

# If we make the lib iconv deps another choco package, they'll never install into this package. :/
# I can either shove all the gnuwin32 into a shared directory and self-manage the individual file removals,
# I can just also extract and download the deps zip here,
# or I can try to manually shim things explicitly setting PATH for shims?

$url = 'http://sourceforge.net/projects/gnuwin32/files/make/3.81/make-3.81-dep.zip'
$checksum = '2edb5b27ab0818b727fb43494dc40a5f'
Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -checksum $checksum -checksumType $checksumType
