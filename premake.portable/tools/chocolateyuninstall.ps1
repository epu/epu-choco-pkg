$packageName = 'premake.portable'
$zipfilename = $packageName + 'Install.zip'
Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipfilename
