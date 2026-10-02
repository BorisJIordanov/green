$repo = "$env:USERPROFILE\green"
Set-Location $repo
(Get-Date).ToUniversalTime().ToString("o") | Add-Content log.txt
git add log.txt
git commit -m "Update log $(Get-Date -Format yyyy-MM-dd)"
git push origin main
