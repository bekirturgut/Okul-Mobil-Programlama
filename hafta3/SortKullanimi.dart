// Ogrenciler sınıfını import ediyoruz
import 'package:collections/Ogrenciler.dart';

void main() {
  // 1) Yeni Öğrenci nesneleri oluşturuluyor
  var o1 = Ogrenciler(150, "Burak", "11A");
  var o2 = Ogrenciler(120, "Ayşe", "9B");
  var o3 = Ogrenciler(180, "Kemal", "12C");
  var o4 = Ogrenciler(140, "Deniz", "10D");

  // 2) Öğrenciler bir listeye ekleniyor
  var ogrenciler = <Ogrenciler>[];
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);
  ogrenciler.add(o4);

  // İlk hali yazdırıyoruz
  print("İlk Hali");
  for (var o in ogrenciler) {
    print("**********");
    print("Öğrenci no : ${o.no}");
    print("Öğrenci ad : ${o.ad}");
    print("Öğrenci sınıf : ${o.sinif}");
  }

  // 3) Sayısal sıralama: Küçükten büyüğe
  Comparator<Ogrenciler> siralama1 = (x, y) => x.no.compareTo(y.no);
  ogrenciler.sort(siralama1);

  print("\nSayısal Küçükten Büyüğe");
  for (var o in ogrenciler) {
    print("**********");
    print("Öğrenci no : ${o.no}");
    print("Öğrenci ad : ${o.ad}");
    print("Öğrenci sınıf : ${o.sinif}");
  }

  // 4) Sayısal sıralama: Büyükten küçüğe
  Comparator<Ogrenciler> siralama2 = (y, x) => x.no.compareTo(y.no);
  ogrenciler.sort(siralama2);

  print("\nSayısal Büyükten Küçüğe");
  for (var o in ogrenciler) {
    print("**********");
    print("Öğrenci no : ${o.no}");
    print("Öğrenci ad : ${o.ad}");
    print("Öğrenci sınıf : ${o.sinif}");
  }

  // 5) Metinsel sıralama: A-Z
  Comparator<Ogrenciler> siralama3 = (x, y) => x.ad.compareTo(y.ad);
  ogrenciler.sort(siralama3);

  print("\nMetinsel Küçükten Büyüğe (A-Z)");
  for (var o in ogrenciler) {
    print("**********");
    print("Öğrenci no : ${o.no}");
    print("Öğrenci ad : ${o.ad}");
    print("Öğrenci sınıf : ${o.sinif}");
  }

  // 6) Metinsel sıralama: Z-A
  Comparator<Ogrenciler> siralama4 = (y, x) => x.ad.compareTo(y.ad);
  ogrenciler.sort(siralama4);

  print("\nMetinsel Büyükten Küçüğe (Z-A)");
  for (var o in ogrenciler) {
    print("**********");
    print("Öğrenci no : ${o.no}");
    print("Öğrenci ad : ${o.ad}");
    print("Öğrenci sınıf : ${o.sinif}");
  }
}
