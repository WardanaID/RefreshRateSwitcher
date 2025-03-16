Import-Module BurntToast              # Pastikan modul terimport

function Show-Notification {
    param (
        [string]$Title,
        [string]$Message
    )
    New-BurntToastNotification -AppLogo C:\smile.jpg -Text $Title, $Message
}
$QResPath = "D:\QRes\QRes.exe"        # Sesuaikan dengan lokasi file QRes.exe
$BatteryRefreshRate = 60              # Ubah berdasarkan nilai refresh rate yang tersedia pada monitor yang kamu gunakan
$PluggedRefreshRate = 120

function Set-RefreshRate {
    param ([int]$RefreshRate)
    if (Test-Path $QResPath) {
        Start-Process -FilePath $QResPath -ArgumentList "/r:$RefreshRate" -NoNewWindow -Wait
        Write-Output "Refresh rate diubah ke $RefreshRate Hz"
        Show-Notification -Title "Refresh Rate Diperbarui" -Message "Sekarang: $RefreshRate Hz"
    } else {
        Write-Output "QRes.exe tidak ditemukan di $QResPath"
        Show-Notification -Title "Gagal Mengubah Refresh Rate" -Message "QRes.exe tidak ditemukan!"
    }
}

function Get-PowerStatus {
    $powerStatus = (Get-WmiObject -Class Win32_Battery).BatteryStatus
    return $powerStatus -eq 1  # 1 = Baterai, 2 = Plugged in
}

$LastStatus = $null
while ($true) {
    $CurrentStatus = Get-PowerStatus

    if ($CurrentStatus -ne $LastStatus) {
        if ($CurrentStatus) {
            Write-Output "Mode baterai terdeteksi. Mengubah refresh rate ke $BatteryRefreshRate Hz"
            Set-RefreshRate -RefreshRate $BatteryRefreshRate
        } else {
            Write-Output "Mode isi daya terdeteksi. Mengubah refresh rate ke $PluggedRefreshRate Hz"
            Set-RefreshRate -RefreshRate $PluggedRefreshRate
        }
        $LastStatus = $CurrentStatus
    }

    Start-Sleep -Seconds 5
}


