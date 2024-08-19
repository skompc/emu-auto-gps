"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell pm grant io.appium.settings android.permission.READ_PHONE_STATE
"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell pm grant io.appium.settings android.permission.WRITE_SETTINGS
"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell pm grant io.appium.settings android.permission.ACCESS_FINE_LOCATION
"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell pm grant io.appium.settings android.permission.ACCESS_COARSE_LOCATION
"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell pm grant io.appium.settings android.permission.ACCESS_MOCK_LOCATION
"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell pm grant io.appium.settings android.permission.SET_ANIMATION_SCALE
"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell pm grant io.appium.settings android.permission.CHANGE_CONFIGURATION

"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell am start -W -n io.appium.settings/.Settings -a android.intent.action.MAIN -c android.intent.category.LAUNCHER -f 0x10200000
"C:\Program Files\Microvirt\MEmu\memuc.exe" -i 0 adb shell appops set io.appium.settings android:mock_location allow