import 'Enum.dart';

// Enum parametresi alan bir fonksiyon
// Gelen renge göre açıklama yazdırır.
void renkAnlaminiYazdir(Renk renk) {
  // switch-case yapısı ile her renge özel işlem yapıyoruz
  switch (renk) {
    case Renk.kirmizi:
      print("Kırmızı: Enerji ve tutkuyu simgeler.");
      break;
    case Renk.mavi:
      print("Mavi: Sakinlik ve huzuru simgeler.");
      break;
    case Renk.yesil:
      print("Yeşil: Doğayı ve umudu simgeler.");
      break;
    case Renk.sari:
      print("Sarı: Neşeyi ve canlılığı simgeler.");
      break;
  }
}

void main() {
  // Enum kullanımına örnek:
  // Renk enum'undan mavi seçeneğini alıyoruz
  Renk secilenRenk = Renk.mavi;

  // Enum elemanı ekrana yazdırılır
  print("Seçilen renk: $secilenRenk");

  // Fonksiyona enum değeri gönderilir
  renkAnlaminiYazdir(secilenRenk);

  // Enum’un tüm elemanlarını döngü ile yazdırma
  print("\nTüm renkler:");
  for (var r in Renk.values) {
    print(r); // Renk.kirmizi, Renk.mavi, Renk.yesil, Renk.sari
  }

  // Enum'un index değerini alma
  print("\nMavi renk indexi: ${Renk.mavi.index}");
}
