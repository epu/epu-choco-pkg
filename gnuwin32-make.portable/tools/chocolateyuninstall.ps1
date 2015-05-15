$packageName = 'gnuwin32-make.portable'
$zipfilename = $packageName + 'Install.zip'
# Does this remove shims?
# Remove-BinFile	
# This doesn't attrib -r files before trying to delete them.
# su.exe had a problem on my test system.
Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipfilename
