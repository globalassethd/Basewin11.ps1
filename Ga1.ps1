# Define the Windows version, edition, and activation to apply during OSDCloud
$OSName = 'Windows 11 24H2 x64'
$OSEdition = 'Pro'
$OSActivation = 'Retail'
$OSLanguage = 'en-us'

# Set OSDCloud global variables for deployment options
$Global:MyOSDCloud = [ordered]@{
    Restart                = [bool]$False
    RecoveryPartition      = [bool]$true
    OEMActivation          = [bool]$True
    WindowsUpdate          = [bool]$true
    WindowsUpdateDrivers   = [bool]$true
    WindowsDefenderUpdate  = [bool]$true
    SetTimeZone            = [bool]$true
    ClearDiskConfirm       = [bool]$False
    ShutdownSetupComplete  = [bool]$false
    SyncMSUpCatDriverUSB   = [bool]$true
    CheckSHA1              = [bool]$true
}

# Launch OSDCloud
Write-Host "Starting OSDCloud" -ForegroundColor Green
Write-Host "Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSActivation $OSActivation -OSLanguage $OSLanguage "
Start-OSDCloud -OSName $OSName -OSEdition $OSEdition -OSActivation $OSActivation -OSLanguage $OSLanguage -ZTI

