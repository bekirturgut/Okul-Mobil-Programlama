import 'CompositionMotor.dart';
import 'CompositionAraba.dart';

void main() {
  // Önce bir Motor nesnesi oluşturuyoruz
  var motor1 = Motor("Benzinli", 150);

  // Araba nesnesine motoru ekliyoruz (composition kullanımı)
  var araba1 = Araba("BMW", "320i", motor1);

  // Araba bilgilerini göster
  araba1.arabaBilgi();

  print("------------");

  // Başka bir motor ile farklı araba
  var motor2 = Motor("Elektrikli", 300);
  var araba2 = Araba("Tesla", "Model 3", motor2);

  araba2.arabaBilgi();
}
