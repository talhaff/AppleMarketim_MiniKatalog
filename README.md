# 🍏 Apple Marketim (Mini Katalog Uygulaması)

Bu proje, Flutter kullanılarak geliştirilmiş modern, dinamik ve kullanıcı dostu bir E-Ticaret / Katalog simülasyonudur. Şık arayüzü, akıcı animasyonları ve temel e-ticaret fonksiyonlarıyla eksiksiz bir alışveriş deneyimi sunmak üzere tasarlanmıştır.

## 🚀 Proje Özellikleri

* **📱 Modern UI/UX:** Özel tasarlanmış AppBar, kavisli hatlar, cam efekti (Glassmorphism) ve Indigo-Mor gradient geçişler.
* **🔍 Dinamik Arama:** Ürünler arasında anında çalışan, harf duyarlı canlı arama çubuğu.
* **🛒 Akıllı Sepet Sistemi:** Ara toplam, %20 KDV ve genel toplam hesaplamaları yapan, dinamik "Badge" (bildirim) destekli sepet yapısı.
* **❤️ Favoriler:** Beğenilen ürünleri kalp butonu ile favori listesine ekleme ve çıkarma (State Management).
* **🎁 Promosyon Sayfası:** `Clipboard` API kullanılarak tek tıkla kopyalanabilen indirim kodları paneli.
* **✨ Pürüzsüz Animasyonlar:** Sayfalar arası `Hero` geçişleri ve iOS tarzı `BouncingScrollPhysics` esneme efektleri.
* **🧭 Sekmeli Yapı:** `BottomNavigationBar` ile sayfalar arası (Keşfet, Favoriler, Sepetim) hızlı ve durum korumalı gezinme.

## 🛠 Kullanılan Teknolojiler ve Sürüm

* **SDK:** Flutter 3.x.x (Güncel kararlı sürüm)
* **Dil:** Dart
* **Mimari:** Stateless & Stateful Widgets
* **Veri Yönetimi:** Yerel JSON Mock Data okuma (`assets/data/products.json`)
* **Harici Paket:** Kullanılmamıştır (Sadece Core Flutter/Material kütüphaneleri)

## 📸 Ekran Görüntüleri

| Keşfet (Ana Sayfa) | Ürün Detay | Özel Fırsatlar |
| :---: | :---: | :---: |
| <img src="screenshots/TalhaOzcan_Goruntu1.png" width="200"/> | <img src="screenshots/TalhaOzcan_Goruntu2.png" width="200"/> | <img src="screenshots/TalhaOzcan_Goruntu3.png" width="200"/> |

| Favoriler | Sepetim |
| :---: | :---: |
| <img src="screenshots/TalhaOzcan_Goruntu4.png" width="200"/> | <img src="screenshots/TalhaOzcan_Goruntu5.png" width="200"/> |


## ⚙️ Kurulum ve Çalıştırma Adımları

Projeyi kendi bilgisayarınızda çalıştırmak için aşağıdaki adımları izleyin:

1. **Repoyu Klonlayın:**
   ```bash
   git clone [https://github.com/KULLANICI_ADINIZ/apple-marketim.git](https://github.com/KULLANICI_ADINIZ/apple-marketim.git)

2. **Proje Dizinine Gidin:**
    cd apple-marketim

3. **Gerekli Bağımlılıkları Yükleyin:**
    flutter pub get

4. **Uygulamayı Çalıştırın:**
Emülatörünüzün veya fiziksel cihazınızın bağlı olduğundan emin olun, ardından:
    flutter run


📁 Proje Klasör Yapısı

    lib/
│
├── data/
│   ├── cart_data.dart        # Sepet listesini tutan global durum
│   └── favorite_data.dart    # Favori listesini tutan global durum
│
├── models/
│   └── product.dart          # JSON verisini parse eden Ürün Modeli
│
├── screens/
│   ├── main_screen.dart      # Bottom Navigation Bar (Ana Yönlendirici)
│   ├── home_screen.dart      # Keşfet / Ana Sayfa
│   ├── detail_screen.dart    # Ürün Detay Sayfası
│   ├── cart_screen.dart      # Sepet ve Fatura Özeti Sayfası
│   ├── favorite_screen.dart  # Favoriler Sayfası
│   └── gift_store_screen.dart# İndirim Kodları Sayfası
│
└── main.dart                 # Uygulama Başlangıç Noktası (Giriş)


Bu proje, Flutter Eğitimi Bitirme Projesi kapsamında Talha Özcan tarafından geliştirilmiştir.

