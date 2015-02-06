#NOTE: Please remove any commented lines to tidy up prior to releasing the package, including this one
 
$packageName = 'Mdsol_NewRelic' # arbitrary name for the package, used in messages

if(!$env:chocolateyPackageParameters)
{    
    Throw "Package Parameters were not found"
}

$newRelic_version = $env:chocolateyPackageParameters
$installerType = 'msi' #only one of these two: exe or msi
$url64 = $url # 64bit URL here or just use the same as $url
$silentArgs = '/qb INSTALLLEVEL=50' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT" # try any of these to get the silent installer #msi is always /quiet
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
 
try {

$url = ("http://download.newrelic.com/dot_net_agent/release/NewRelicAgent_{0}.msi" -f  $newRelic_version)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
}
catch{
 Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
 Throw
}clear