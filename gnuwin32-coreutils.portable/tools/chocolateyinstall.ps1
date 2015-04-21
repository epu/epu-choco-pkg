# Ugh. Requires a dep zip also. coreutils-5.3.0-dep.zip
$ErrorActionPreference = 'Stop';
$packageName = 'gnuwin32-coreutils.portable'
$url = 'http://sourceforge.net/projects/gnuwin32/files/coreutils/5.3.0/coreutils-5.3.0-bin.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = 'aa7ce7f1f2befb930fb156bddea41bc4'
$checksumType = 'md5'
Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -checksum $checksum -checksumType $checksumType

# If we make the lib iconv deps another choco package, they'll never install into this package. :/
# I can either shove all the gnuwin32 into a shared directory and self-manage the individual file removals,
# I can just also extract and download the deps zip here,
# or I can try to manually shim things explicitly setting PATH for shims?

$url = 'http://sourceforge.net/projects/gnuwin32/files/coreutils/5.3.0/coreutils-5.3.0-dep.zip'
$checksum = '6cf05855b6902dffa2cf4ba8b90e82e6'
Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -checksum $checksum -checksumType $checksumType
