$packageName = 'Octave'
$installerType = 'EXE' 
$url = 'http://downloads.sourceforge.net/project/octave/Octave%20Windows%20binaries/Octave%203.2.4%20for%20Windows%20MinGW32%20Installer/Octave-3.2.4_i686-pc-mingw32_gcc-4.4.0_setup.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

$addToPath = Join-Path $env:HOMEDRIVE `Octave\3.2.4_gcc-4.4.0\bin`
Install-ChocolateyPath $addToPath 'Machine' 