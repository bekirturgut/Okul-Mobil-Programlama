import 'dart:io';
import 'dart:math';

void main() {
  Random rnd = Random();
  int gizliSayi;

  // --- 4 basamaklı, rakamları farklı bir sayı üret ---
  while (true) {
    gizliSayi = 1000 + rnd.nextInt(9000); // 1000–9999 arası sayı
    String s = gizliSayi.toString();

    if (rakamlarFarkliMi(s)) {
      break;
    }
  }

  // print("DEBUG: Gizli sayı = $gizliSayi");

  print("4 basamaklı sayıyı tahmin et! (10 hakkın var)");
  print("Her rakam farklı olacak.\n");

  int hak = 10;

  while (hak > 0) {
    stdout.write("Tahmininizi giriniz (${hak} hakkınız kaldı): ");
    String? giris = stdin.readLineSync();

    if (giris == null || giris.length != 4 || int.tryParse(giris) == null) {
      print("Lütfen 4 basamaklı geçerli bir sayı girin.\n");
      continue;
    }

    // Kullanıcı girişinin rakamlarının da farklı olduğunu kontrol et
    if (!rakamlarFarkliMi(giris)) {
      hak--;
      print("Tahmininizde aynı rakamdan birden fazla var. Tekrar deneyin.\n");
      continue;
    }

    int tahmin = int.parse(giris);
    String gizliStr = gizliSayi.toString();
    String tahminStr = tahmin.toString();

    String sonuc = ""; // burada string olarak tutuluyor

    for (int i = 0; i < 4; i++) {
      if (tahminStr[i] == gizliStr[i]) {
        sonuc += "+"; // doğru rakam + doğru yer
      } else if (gizliStr.contains(tahminStr[i])) {
        sonuc += "?"; // rakam var ama yanlış yerde
      } else {
        sonuc += "-"; // rakam yok
      }
    }

    // Kullanıcı tahmini ve altına sonucu yazdır
    print("\nTahmin : ${tahminStr.split('').join(' ')}");
    print("Sonuç  : ${sonuc.split('').join(' ')}\n");

    // Kazanma durumu
    if (sonuc == "++++") {
      print("TEBRİKLER! Sayıyı doğru bildiniz: $gizliSayi");
      return;
    }

    hak--;
  }

  print(" Maalesef bilemediniz. Doğru sayı: $gizliSayi");
}

// --- Fonksiyon: Rakamların farklı olup olmadığını döngü ile kontrol ---
bool rakamlarFarkliMi(String s) {
  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j < s.length; j++) {
      if (s[i] == s[j]) {
        return false; // aynı rakam bulundu
      }
    }
  }
  return true; // hiç tekrar bulunmadı
}
