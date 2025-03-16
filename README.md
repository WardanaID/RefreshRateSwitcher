# Refresh Rate Switcher

Mengubah Refresh Rate dari 60hz ke 120hz atau sebaliknya berdasarkan kodisi daya perangkat (mode baterai atau mode isi daya) secara otomatis untuk perangkat yang tidak mendukung Refresh Rate Dinamis

## Cara menggunakan
karena skrip ini menggunakan notifikasi banner dari windows untuk indikator status refresh rate, kamu perlu memasang modul burnttoast
![image](https://github.com/user-attachments/assets/957ec95d-1862-488e-a994-4d69c8eec1ce)

Jalankan Powershell dalam hak akses administrator lalu eksekusi baris ini:
      Install-Module -Name BurntToast -Force -Scope CurrentUser

kemudian, kamu dapat menjalankan skrip dengan powershell dengan cara mengklik kanan pada file .ps1 lalu pilih Run with PowerShell, atau dengan menjalankan baris ini di powershell:
      powershell -ExecutionPolicy Bypass -File RefreshRateSwitcher.ps1
