param(
    [string] $EndDate = "2022-06-30",
    [int] $KronkorkCount,
    [int] $RequiredKronkorks = 6000
)

[string] $today = Get-Date -Format "yyyy-MM-dd"

[int] $availableDays = (New-TimeSpan -Start $today -End $EndDate).Days

[int] $kronKorkDiff = $RequiredKronkorks - $KronkorkCount

[double] $kronKorksPerDay = $kronKorkDiff / $availableDays
[string] $asciiBottle = @'
                   _
                  |=|
                  | |
                  | |
                 /   \
                .     .
                |-----|
                |FELDI|
                |-----|
                |_____|
'@
Write-Host $asciiBottle -ForegroundColor Red
Write-Host "In den nächsten $($availableDays) Tagen müssen $($kronKorksPerDay) Kronkörks gesammelt werden." -ForegroundColor White -BackgroundColor Red