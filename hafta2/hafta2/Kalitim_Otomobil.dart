// Otomobil.dart
// Arac sınıfından türeyen (inheritance) sınıf

import 'Kalitim_Arac.dart';

class Otomobil extends Arac {
  int kapiSayisi;

  Otomobil(String marka, String model, int maxHiz, this.kapiSayisi)
      : super(marka, model, maxHiz);

  @override
  void calistir() {
    super.calistir();
    print("[$marka $model] Gösterge paneli açıldı, klima hazır.");
  }

  @override
  void hizlan(int artis) {
    super.hizlan(artis);
  }

  @override
  void bilgiYazdir() {
    print("Otomobil -> Marka: $marka, Model: $model, Kapı: $kapiSayisi, MaxHız: $maxHiz, AnlıkHız: $anlikHiz");
  }
}
