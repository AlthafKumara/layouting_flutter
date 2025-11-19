# Flutter Lifecycle & Product Countdown Demo

Proyek ini adalah aplikasi Flutter sederhana yang berisi demonstrasi beberapa konsep penting dalam pengembangan aplikasi mobile, yaitu:

- **StatefulWidget Lifecycle**
- **Navigation dengan Named Routes**
- **Responsive UI menggunakan `flutter_screenutil`**
- **Timer & Countdown untuk perubahan harga produk**
- **Nested Layout**
- **Counter dengan setState**
- **Profile Page sederhana**

Aplikasi ini dirancang sebagai latihan modul, sehingga setiap halaman fokus pada penggunaan konsep tertentu.

---

## **Fitur Utama**

### 1. **Nested Layout Page**
Menu utama aplikasi yang menyediakan navigasi ke berbagai halaman:
- Profile Page  
- Counter Page  
- Lifecycle Page  
- Product Page  

Menggunakan layout `Column`, `CircleAvatar`, dan beberapa tombol dengan style khusus.

---

### 2. **Profile Page**
Halaman sederhana yang menampilkan informasi pengguna seperti:
- Foto Profil  
- Nama pengguna  

---

### 3. **Counter Page**
Halaman demonstrasi penggunaan `setState()` pada:
- Tombol Increment  
- Tombol Decrement  

Memberikan visual feedback langsung melalui perubahan angka counter.

---

### 4. **Lifecycle Page**
Contoh implementasi **Flutter Widget Lifecycle**, termasuk:
- `initState()`
- `didChangeDependencies()`
- `dispose()`
- Stateful update log di console

Halaman ini dimaksudkan untuk memahami lifecycle widget dan kapan suatu fungsi dipanggil otomatis oleh Flutter.

---

### 5. **Product Page – Timer & Dynamic Price (MAIN TASK)**
Halaman showcase paling lengkap dalam project ini.

### A. VALIDASI STOCK DAN COUNTER JUMLAH PEMBELIAN
<img width="540" height="1101" alt="image" src="https://github.com/user-attachments/assets/d2d942c6-50c9-4f17-971c-c3b6cc8d056c" />

### B. PERUBAHAN WIDGET TEXT -> HARGA DAN INDIKATOR STATUS SETELAH DISKON
<img width="540" height="1101" alt="image" src="https://github.com/user-attachments/assets/ecc1f81f-7ac2-44f5-8b89-39440608b991" />

### C. PERUBAHAN WIDGET TEXT -> HARGA DAN INDIKATOR STATUS SEBELUM DISKON
<img width="540" height="1101" alt="image" src="https://github.com/user-attachments/assets/95621836-1ac3-4d79-8a1c-b325d48725b7" />




Fitur:
- Menampilkan gambar produk  
- Harga asli  
- Countdown otomatis saat user membuka halaman  
- Harga berubah ke harga diskon ketika timer mencapai 0  
- Counter jumlah pembelian + validasi stock  
- Indikator status diskon:  
  - "Diskon aktif dalam X detik"  
  - "Harga Diskon Aktif!"  

Menggunakan:
- `Timer.periodic()`  
- `setState()`  
- `initState()` untuk memulai timer otomatis
- `dispose()` untuk menghapus fungsi timer setelah selesai dijalankan 
- Responsive layout ScreenUtil

---

## **Struktur Navigasi**

Aplikasi menggunakan **Named Routes**:

| Route | Halaman |
|-------|---------|
| `/nested` | Nested Layout (menu utama) |
| `/counter` | Counter Page |
| `/profile` | Profile Page |
| `/lifecycle` | Lifecycle Demo Page |
| `/product` | Product Page (Countdown Harga) |

---

## 🖥 **Responsive UI dengan package flutter_screenUtil**

Proyek ini menggunakan:

```dart
ScreenUtilInit(
  designSize: Size(360, 690),
) 

# Cara Menjalankan Project Flutter

# 1. Clone repository
git clone <url-repository>

# 2. Masuk ke folder project
cd <nama-folder-project>

# 3. Install semua dependencies Flutter
flutter pub get

# 4. Jalankan aplikasi
flutter run

# (Opsional) Menjalankan aplikasi dengan file main tertentu
flutter run -t lib/main.dart
