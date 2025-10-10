void main() {

  // Örnek 1 : Değişken tanımlama
  var yas = 25;
  int yil = 2025;

  // Örnek 2 : Değişkenin değerini daha sonra değiştirebiliriz
  var sicaklik = 18.5;
  double nemOrani = 45.7;

  print(sicaklik);
  print(nemOrani);

  sicaklik = 22.3;
  nemOrani = 40.2;

  print(sicaklik);
  print(nemOrani);

  // Örnek 3 : İşlem yaptıktan sonra başka bir değişkene veri aktarılabilir.
  var kenar1 = 5;
  int kenar2 = 8;

  var cevre = (kenar1 + kenar2) * 2;
  int alan = kenar1 * kenar2;

  print("Dikdörtgen çevresi : $cevre");
  print("Dikdörtgen alanı : $alan");

  // Örnek 4 : Boş değişken oluşturup daha sonra değer aktarabiliriz.
  var sonuc1;
  int sonuc2;

  sonuc1 = "Başarılı"; // dynamic tip
  sonuc2 = 99;

  print(sonuc1);
  print(sonuc2);

  // Örnek 5 : Yan yana değişken oluşturma
  var a, b, c;

  a = 3.5;
  b = 7.2;
  c = 1.1;
  print("Değerler: $a, $b, $c");

  int not1 = 85, not2 = 92;
  print("Notlar: $not1 ve $not2");

  // Örnek 6 : Type Safety
  var deger = "Merhaba";
  // deger = 123; // Tip güvenliği hatası
}