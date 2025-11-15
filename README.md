# 🧮 Aplikasi Kalkulator Flutter

Aplikasi kalkulator sederhana yang dibangun menggunakan Flutter untuk melakukan operasi aritmatika dasar.

## 📱 Screenshot

```
┌─────────────────────────────────┐
│  Kalkulator Flutter             │
├─────────────────────────────────┤
│                                 │
│                    125 + 75     │
│                           200   │
│                                 │
├─────────────────────────────────┤
│  C   │  ⌫   │  ÷   │  ×   │
│  7   │  8   │  9   │  -   │
│  4   │  5   │  6   │  +   │
│  1   │  2   │  3   │  =   │
│  0        │  .   │      │      │
└─────────────────────────────────┘
```

## ✨ Fitur

- ✅ Operasi aritmatika dasar (Penjumlahan, Pengurangan, Perkalian, Pembagian)
- ✅ Mendukung bilangan desimal
- ✅ Fungsi Clear (C) untuk menghapus semua input
- ✅ Fungsi Delete (⌫) untuk menghapus karakter terakhir
- ✅ Penanganan error untuk pembagian dengan nol
- ✅ UI yang intuitif dan responsif
- ✅ Dark mode design

## 🚀 Cara Menjalankan

### Prasyarat

Pastikan Anda telah menginstall:
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (versi 3.27.0 atau lebih baru)
- [Dart SDK](https://dart.dev/get-dart) (versi 3.6.0 atau lebih baru)
- Android Studio atau VS Code dengan ekstensi Flutter
- Android Emulator atau perangkat Android fisik

### Langkah Instalasi

1. **Clone repository**
   ```bash
   git clone https://github.com/avhan052-arch/tugas_kelompok_flutter.git
   cd tugas_kelompok_flutter
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Jalankan aplikasi**
   ```bash
   flutter run
   ```

4. **Build APK (opsional)**
   ```bash
   flutter build apk --release
   ```
   APK akan tersedia di: `build/app/outputs/flutter-apk/app-release.apk`

## 📁 Struktur Proyek

```
flutter_calculator_app/
├── lib/
│   └── main.dart          # File utama aplikasi
├── android/               # Konfigurasi Android
├── ios/                   # Konfigurasi iOS  
├── test/                  # Unit test (opsional)
├── pubspec.yaml          # Dependency management
└── README.md             # Dokumentasi ini
```

## 🛠️ Teknologi yang Digunakan

- **Flutter** - Framework UI cross-platform
- **Dart** - Bahasa pemrograman
- **Material Design** - Design system

## 📖 Cara Penggunaan

1. **Input Angka**: Tap pada tombol angka (0-9) untuk memasukkan angka
2. **Pilih Operator**: Tap pada operator (+, -, ×, ÷)
3. **Input Angka Kedua**: Masukkan angka kedua
4. **Hitung**: Tap tombol `=` untuk melihat hasil
5. **Clear**: Tap tombol `C` untuk menghapus semua input
6. **Delete**: Tap tombol `⌫` untuk menghapus karakter terakhir

## 🧪 Testing

Aplikasi telah diuji dengan 12 skenario pengujian mencakup:
- Operasi aritmatika dasar
- Bilangan desimal
- Hasil negatif
- Pembagian dengan nol
- Fungsi Clear dan Delete

Lihat laporan lengkap di dokumentasi proyek.

## 👥 Tim Pengembang

- Hasan     ()
- Aisyah    ()
- Syahril   ()
- Harun     ()

**Program Studi Sistem Informasi**  
Sekolah Tinggi Ilmu Komputer 22 Januari Kendari

## 📝 Lisensi

Proyek ini dibuat untuk keperluan akademik sebagai tugas Mata Kuliah Aplikasi Mobile.

## 🔗 Link Terkait

- [Dokumentasi Flutter](https://flutter.dev/docs)
- [Dart Language](https://dart.dev)
- [Material Design](https://material.io)

## 🐛 Menemukan Bug?

Jika Anda menemukan bug atau memiliki saran, silakan buat [issue](https://github.com/avhan052-arch/tugas_kelompok_flutter/issues) baru.

## 📞 Kontak

Untuk pertanyaan atau diskusi lebih lanjut, hubungi kami melalui:
- Email: [avhan052@gmail.com]
- GitHub: [@avhan052-arch]

---

⭐ Jangan lupa berikan star jika proyek ini membantu Anda!