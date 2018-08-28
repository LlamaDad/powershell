$webRequest = Invoke-WebRequest https://github.com/raw/LlamaDad/output/paths.txt
$paths = ConvertFrom-StringData -StringData $webRequest.Content