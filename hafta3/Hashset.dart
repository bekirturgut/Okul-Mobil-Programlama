import 'dart:collection';

void main() {
  // Bir HashSet tanımlıyoruz
  var meyveler = HashSet<String>();

  // Eleman ekleme
  meyveler.add("Elma");
  meyveler.add("Muz");
  meyveler.add("Portakal");
  meyveler.add("Elma"); // tekrar eklense de yalnızca bir tane tutulur

  print("Meyveler: $meyveler");
  // Çıktı (sıra garanti edilmez): {Elma, Muz, Portakal}

  // Eleman var mı kontrolü
  print("Muz var mı? ${meyveler.contains("Muz")}"); // true
  print("Çilek var mı? ${meyveler.contains("Çilek")}"); // false

  // Eleman silme
  meyveler.remove("Portakal");
  print("Portakal silindikten sonra: $meyveler");

  // Üzerinde gezinme
  for (var meyve in meyveler) {
    print("Meyve: $meyve");
  }

  // Toplu ekleme
  meyveler.addAll(["Karpuz", "Üzüm", "Muz"]); // Muz zaten var, yine eklenmez
  print("Yeni eklemeler sonrası: $meyveler");

  // Farklı set işlemleri
  var tropikal = HashSet<String>()..addAll(["Muz", "Ananas", "Mango"]);

  print("Birleşim (union): ${meyveler.union(tropikal)}");
  print("Kesişim (intersection): ${meyveler.intersection(tropikal)}");
  print("Fark (difference): ${meyveler.difference(tropikal)}");
}
