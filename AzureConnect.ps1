#Connection Script to Azure
#Which Tenant is this?
$TenantID = "Id Here"

#Get User Credentials
$cred = .\Tools\credman -GetCred -Target "PrdTgt"
connect-msolservice -credential $cred