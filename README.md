# Webview Template

A responsive webview Flutter project.

## Getting Started

Sebelum mulai jika belum pernah menggunakan Flutter, bisa install terlebih dahulu mengikuti tutorial berikut https://nextgen.co.id/cara-menginstal-flutter/

### Langkah 1: Clone atau Download Repository
1. Buka terminal atau command prompt di direktori yang diinginkan.
2. Clone repository menggunakan perintah berikut:

   ```bash
   git clone https://github.com/PT-Nextgen/Webview_Template.git
   ```

   atau download repository secara manual dari GitHub.

### Langkah 2: Jalankan Command Flutter Pub Get
1. Navigasi ke direktori repository yang diclone:

   ```bash
   cd webview-flutter-template
   ```

2. Jalankan command berikut untuk mengunduh dependencies:

   ```bash
   flutter pub get
   ```

### Langkah 3: Modifikasi Data di File Configuration.dart
1. Buka file `configuration.dart` di direktori `lib/`.
2. Sesuaikan data yang dibutuhkan, seperti URL webview, judul aplikasi, dan lain-lain.

### Langkah 4: Ganti Nama & BundleID
1. Jalankan perintah berikut untuk mengaktifkan package `rename`:

   ```bash
   flutter pub global activate rename
   ```

2. Ganti nama aplikasi dengan perintah:

   ```bash
   rename setAppName --targets ios,android --value "NamaAplikasi"
   ```

3. Ganti Bundle ID dengan perintah:

   ```bash
   rename setBundleId --targets android --value "co.id.nextgen.namaaplikasi"
   ```

### Langkah 5: Jalankan Aplikasi
1. Jalankan aplikasi menggunakan perintah berikut:

   ```bash
   flutter run
   ```

2. Aplikasi akan dijalankan di emulator atau simulator yang dipilih.

---

## Konfigurasi Untuk Build Release

Setelah menyelesaikan semua langkah di bagian "Getting Started", ikuti langkah-langkah berikut untuk membuat build release:

### Langkah 1: Generate Keystore
1. Jalankan perintah berikut di terminal:

   ```bash
   keytool -genkey -v -keystore C:\Users\USERNAME\.android\namaKey.jks -keyalg RSA -keysize 2048 -validity 10000 -alias aliasreleasekey
   ```

   - Ganti `USERNAME`, `namaKey`, dan `aliasreleasekey` sesuai kebutuhan.

2. Masukkan data yang diminta selama proses berjalan.
   - Catat password yang dimasukkan (buat kedua password sama untuk menghindari kebingungan).

3. Letakkan file `namaKey.jks` yang dihasilkan di folder `android/app`.

### Langkah 2: Buat File Key.properties
1. Buat file `key.properties` di dalam folder `android`.
2. Isi file dengan konten berikut:

   ```
   storePassword=masukkanPasswordYangDigunakanSaatMembuatKeystore
   keyPassword=masukkanPasswordYangDigunakanSaatMembuatKeystore
   keyAlias=masukkanAliasYangDigunakanUntukMembuatKeystore
   storeFile=masukkan lokasi keystore.jks, contoh: D:/ProjectKantor/Webview/android/app/namaKey.jks
   ```

### Langkah 3: Ubah Konfigurasi di File Build.gradle
1. Buka file `android/app/build.gradle`.
2. Pastikan pengaturan signing configuration:
   - Tambahkan `//` (comment) di baris `signingConfig signingConfigs.debug`.
   - Hapus `//` (uncomment) di baris `signingConfig signingConfigs.release`.

### Langkah 4: Build Aplikasi
1. Untuk build APK release, jalankan:

   ```bash
   flutter build apk --release
   ```

2. Untuk membuat App Bundle, lakukan langkah berikut:
   - Jalankan `flutter clean`:

     ```bash
     flutter clean
     ```

   - Setelah selesai, jalankan:

     ```bash
     flutter build appbundle --target-platform android-arm,android-arm64,android-x64
     ```

