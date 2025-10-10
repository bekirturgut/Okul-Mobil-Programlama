import 'package:collections/Ogrenciler.dart';

void main() {
  // 1) Yeni Öğrenci nesneleri oluşturuluyor
  var o1 = Ogrenciler(101, "Ali", "11B");
  var o2 = Ogrenciler(202, "Ayşe", "10C");
  var o3 = Ogrenciler(303, "Mert", "12F");

  // 2) Öğrencileri tutmak için boş bir liste oluşturuluyor
  var ogrenciler = <Ogrenciler>[];

  // 3) Öğrenciler listeye ekleniyor
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);

  // 4) Filtreleme işlemi
  // İsimlerinde "a" harfi geçen öğrenciler seçilecek.
  Iterable<Ogrenciler> filtrelenListe = ogrenciler.where((ogrenci) {
    return ogrenci.ad.toLowerCase().contains("a");
    // Ali → "a" var → filtreye girer
    // Ayşe → "a" var → filtreye girer
    // Mert → "a" var → filtreye girer (küçük/büyük fark etmemesi için toLowerCase kullandık)
  });

  // 5) Iterable → List dönüşümü
  ogrenciler = filtrelenListe.toList();

  // 6) Filtrelenmiş öğrencileri ekrana yazdırma
  for (var o in ogrenciler) {
    print("**********");
    print("Öğrenci no     : ${o.no}");
    print("Öğrenci ad     : ${o.ad}");
    print("Öğrenci sınıf  : ${o.sinif}");
  }
}
