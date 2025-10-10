// Üst sınıf (base class) - tüm şekillerin ortak özelliklerini taşır
class Sekil {
  // Alan hesaplama metodu (soyut bir fikir, gerçek formül alt sınıfta olacak)
  double alanHesapla() {
    return 0;
  }

  // Bilgi yazdırma metodu
  void bilgiYazdir() {
    print("Bu bir şekildir.");
  }
}
