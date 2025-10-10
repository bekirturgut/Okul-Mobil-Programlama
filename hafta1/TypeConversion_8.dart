void main() {
  // -------------------------
  // SAYISAL TİPLER ARASI DÖNÜŞÜMLER
  // -------------------------

  int i = 42;         // int türünde bir sayı
  double d = 42.45;   // double türünde bir sayı

  // double -> int dönüşümü (ondalık kısım atılır)
  int sonuc1 = d.toInt();
  // int -> double dönüşümü
  double sonuc2 = i.toDouble();

  print("Double'dan Int'e: $sonuc1");   // 42
  print("Int'ten Double'a: $sonuc2");  // 42.0

  // -------------------------
  // SAYISAL -> METİN DÖNÜŞÜMLERİ
  // -------------------------

  // int türünü String'e çevirme
  String str1 = i.toString();
  // double türünü String'e çevirme
  String str2 = d.toString();

  print("Int'ten String'e: $str1");     // "42"
  print("Double'dan String'e: $str2");  // "42.45"

  // -------------------------
  // METİN -> SAYISAL DÖNÜŞÜMLER
  // -------------------------

  String yazi1 = "34";     // sadece tam sayı içeren String
  String yazi2 = "34.67";  // ondalıklı sayı içeren String

  // String -> int dönüşümü
  int s1 = int.parse(yazi1);
  // String -> double dönüşümü
  double s2 = double.parse(yazi2);

  print("String'den Int'e: $s1");   // 34
  print("String'den Double'a: $s2"); // 34.67

  // -------------------------
  // HATA DURUMLARI
  // -------------------------
  // Eğer String sayı formatında değilse (ör. "abc"),
  // int.parse() veya double.parse() hata verir.
  // Bu yüzden try-catch kullanmak faydalı olur.
  try {
    String hatali = "abc";
    int hata = int.parse(hatali);
    print(hata);
  } catch (e) {
    print("Hatalı dönüşüm: $e");
  }
}
