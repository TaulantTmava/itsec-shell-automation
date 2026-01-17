# ==========================================
# PowerShell Admin Account Check (Locale-safe)
# ==========================================

$LogFile = ".\AdminCheck.log"
$Date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

Add-Content $LogFile "[$Date] Startar kontroll av lokala administratörer"

try {
    $AdminGroup = Get-LocalGroup | Where-Object { $_.SID -like "*-544" }
    $Admins = Get-LocalGroupMember -Group $AdminGroup.Name

    foreach ($Admin in $Admins) {
        Add-Content $LogFile ("Konto: " + $Admin.Name)
    }
}
catch {
    Add-Content $LogFile "Fel: Kunde inte läsa administratörsgruppen"
}

Add-Content $LogFile "[$Date] Kontroll avslutad"
Add-Content $LogFile ""
