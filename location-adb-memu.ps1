$Instance = 0
Do {
 
    Add-Type -AssemblyName System.Device
    $GeoWatcher = New-Object System.Device.Location.GeoCoordinateWatcher
    $GeoWatcher.Start() #Begin resolving current locaton
 
    while (($GeoWatcher.Status -ne 'Ready') -and ($GeoWatcher.Permission -ne 'Denied')) {
        Start-Sleep -Milliseconds 100
    }  
 
    if ($GeoWatcher.Permission -eq 'Denied'){
        Write-Error 'Access Denied for Location Information'
    } else {
        $gpslocation = ( $GeoWatcher.Position.Location | select Latitude, Longitude )
 
    }
 
    $gpslocation.Latitude = $gpslocation.Latitude -replace '\,','.'
    $gpslocation.Longitude = $gpslocation.Longitude -replace '\,','.'
 
    $Command = "C:\Program Files\Microvirt\MEmu\memuc.exe"
    $Parms = "-i $($Instance) adb shell am startservice -e longitude $($gpslocation.Longitude) -e latitude $($gpslocation.Latitude) io.appium.settings/.LocationService;"
 
 
    $Prms = $Parms.Split(" ")
    & "$Command" $Prms
    
    sleep 1
    
    }
    
while ($true)
