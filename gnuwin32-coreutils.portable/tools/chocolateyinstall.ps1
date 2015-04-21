# Ugh. Requires a dep zip also. coreutils-5.3.0-dep.zip
$ErrorActionPreference = 'Stop';
$packageName = 'gnuwin32-coreutils.portable'
$url = 'http://sourceforge.net/projects/gnuwin32/files/coreutils/5.3.0/coreutils-5.3.0-bin.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = 'aa7ce7f1f2befb930fb156bddea41bc4'
$checksumType = 'md5'
Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir" -checksum $checksum -checksumType $checksumType

#$binRoot = Get-BinRoot
#$gitInstallDir = Join-Path $binRoot 'git'
#$deprecatedInstallDir = Join-Path $env:systemdrive 'git'
#$files = get-childitem $installDir -include *.exe -recurse
#foreach ($file in $files) {
#  if (!($file.Name.Contains("git.exe")) -and !($file.Name.Contains("ssh"))) {
#    #generate an ignore file
#    New-Item "$file.ignore" -type file -force | Out-Null
#  }
#}
#if (Test-Path $deprecatedInstallDir) { Remove-Item $deprecatedInstallDir -recurse -force -ErrorAction SilentlyContinue }
#if (Test-Path $gitInstallDir) { Remove-Item $gitInstallDir -recurse -force -ErrorAction SilentlyContinue }