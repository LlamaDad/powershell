New-Item -path $profile -type file -force
Test-Path $profile

Clear-Host
If((Test-Path $profile) -eq "True") {Notepad $profile}
    Else {Write-Host "Still no profile file"}