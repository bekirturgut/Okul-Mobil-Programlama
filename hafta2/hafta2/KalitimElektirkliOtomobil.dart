// ElektrikliOtomobil.dart
// Otomobil sınıfından türeyen alt sınıf

import 'Kalitim_Otomobil.dart';

class ElektrikliOtomobil extends Otomobil {
  int bataryaKapasitesiKWh;
  int sarjYuzdesi;

  ElektrikliOtomobil(
      String marka,
      String model,
      int maxHiz,
      int kapiSayisi,
      this.bataryaKapasitesiKWh, {
        this.sarjYuzdesi = 80,
      }) : super(marka, model, maxHiz, kapiSayisi);

  @override
  void calistir() {
    print("[$marka $model] Sistem başlatılıyor... (sessiz)");
    print("[$marka $model] Batarya: $sarjYuzdesi% • Kapasite: ${bataryaKapasitesiKWh}kWh");
  }

  @override
  void hizlan(int artis) {
    int artisElektrikli = (artis * 1.5).round();
    super.hizlan(artisElektrikli);
  }

  void sarjEt(int yuzdeArtis) {
    sarjYuzdesi += yuzdeArtis;
    if (sarjYuzdesi > 100) sarjYuzdesi = 100;
    print("[$marka $model] Şarj edildi. Yeni seviye: $sarjYuzdesi%");
  }

  @override
  void bilgiYazdir() {
    print("ElektrikliOtomobil -> Marka: $marka, Model: $model, Kapı: $kapiSayisi, "
        "Batarya: ${bataryaKapasitesiKWh}kWh, Şarj: $sarjYuzdesi%, "
        "MaxHız: $maxHiz, AnlıkHız: $anlikHiz");
  }
}
