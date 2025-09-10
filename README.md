# Refresh Rate Switcher

**Refresh Rate Switcher** adalah skrip otomatis untuk mengubah refresh rate layar antara 60Hz dan 120Hz sesuai kondisi daya perangkat (mode baterai atau mode charging). Solusi ini sangat cocok untuk perangkat yang belum mendukung fitur Dynamic Refresh Rate secara bawaan.

---

## ✨ Fitur Utama

- 🔄 **Switch Otomatis:** Berpindah antara 60Hz dan 120Hz secara otomatis sesuai status daya.
- 🖥️ **Notifikasi Windows:** Menampilkan status refresh rate melalui notifikasi banner (dengan modul BurntToast).
- ⚡ **Hemat Daya:** Membantu menghemat baterai saat perangkat tidak terhubung ke charger.
- 🛠️ **Mudah Digunakan:** Eksekusi cepat lewat PowerShell atau file .bat.

---

## 📝 Cara Menggunakan

1. **Pasang Modul Notifikasi**
   - Buka PowerShell sebagai Administrator.
   - Jalankan perintah berikut untuk memasang modul BurntToast:
     ```powershell
     Install-Module -Name BurntToast -Force -Scope CurrentUser
     ```

2. **Jalankan Skrip**
   - Klik kanan pada file `RefreshRateSwitcher.ps1` lalu pilih **Run with PowerShell**, atau
   - Jalankan perintah berikut di PowerShell:
     ```powershell
     powershell -ExecutionPolicy Bypass -File RefreshRateSwitcher.ps1
     ```
   - **Atau**, langsung buka file `.bat` yang tersedia untuk menjalankan skrip secara otomatis.

3. **Notifikasi**
   - Setiap kali refresh rate berubah, Anda akan mendapatkan notifikasi banner seperti gambar di bawah:
     ![image](https://github.com/user-attachments/assets/957ec95d-1862-488e-a994-4d69c8eec1ce)

---

## ❓ FAQ

- **Apakah script ini aman?**
  - Script hanya mengubah pengaturan refresh rate dan tidak memodifikasi sistem secara permanen.

- **Apakah bisa berjalan tanpa BurntToast?**
  - Bisa, namun Anda tidak akan mendapatkan notifikasi banner.

---

## 🙌 Kontribusi

Saran, bug report, dan pull request sangat terbuka! Jangan ragu untuk fork dan mengembangkan fitur baru.
