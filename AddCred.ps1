#Load Visual Basic Elements (LoadwithPartialName is deprecated)(Explore Add-Array)
[void][System.Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')

#Prompt for UserID
$Account = [Microsoft.VisualBasic.Interaction]::InputBox("Enter your UserID user@domain", "UserID")

#Prompt for password and store it in a secure field
$AccountPassword = Read-Host "Password" -AsSecureString

#Store Password as a System Object
$DBCreds = Now-Object System.Management.Automation.PSCredential($Account,$AccountPassword)

#Prompt for Credential Target Name
$Target = [Microsoft.VisualBasic.Interaction]::InputBox("Enter the Credential Name", "Target")

#Use Credname to store username and password as secure fields in Windows Credential Manager
.\tools\CredMan.ps1\ -AddCred -Target $Target -User $Account -pass $DBCreds