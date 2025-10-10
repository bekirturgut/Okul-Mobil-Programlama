void main(){
  //Dart dilinde tür belirtmeden değişken oluşturabiliriz.
  var ogrenciAdi = "Zeynep";
  var ogrenciYasi = 21;
  var ogrenciBoyu = 1.65;
  var ogrenciBasHarfi = "Z";
  var ogrenciMezunMu = false;

  print("Öğrenci Adı : $ogrenciAdi");
  print("Öğrenci Yaşı : $ogrenciYasi");
  print("Öğrenci Boyu : $ogrenciBoyu");
  print("Öğrenci Baş Harfi : $ogrenciBasHarfi");
  print("Öğrenci Mezun mu? : $ogrenciMezunMu");

  //Tür belirterek değişken oluşturma
  //Türler: int, double, String, Bool
  int kitap_id = 2025;
  String kitap_ad = "Dart Programlama";
  int kitap_adet = 50;
  double kitap_fiyat = 249.50;
  String kitap_yayinevi = "TechPress";
  bool kitapStoktaMi = true;

  print("Kitap id : $kitap_id");
  print("Kitap ad : $kitap_ad");
  print("Kitap adet : $kitap_adet");
  print("Kitap fiyat : $kitap_fiyat");
  print("Kitap yayınevi : $kitap_yayinevi");
  print("Kitap stokta mı? : $kitapStoktaMi");
}

// Literals değişkene doğrudan atanan sabit değerlerdir.
// int a = 10;   // 10 bir integer literal'dir
// double pi = 3.14;   // 3.14 bir double literal'dir

// num: int veya double olabilir
// num x = 5;
// num y = 2.7;

//String Literalleri: Tek tırnak ' ' veya çift tırnak " " ile yazılabilir.
//String ad = "Ahmet";   // "Ahmet" bir string literal
//String soyad = 'Yılmaz';

//Çok satırlı stringler (triple quotes)
//String aciklama = '''Bu birden fazla
//satırlı string literalidir.''';