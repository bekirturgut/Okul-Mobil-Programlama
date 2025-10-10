import 'CompositionMotor.dart';

// Araba sınıfı: içinde Motor barındırır (composition)
class Araba {
  String marka;
  String model;

  // Composition: Araba'nın içinde bir Motor nesnesi var
  Motor motor;

  Araba(this.marka, this.model, this.motor);

  void arabaBilgi() {
    print("Araba: $marka $model");
    motor.motorBilgi(); // Motor bilgisini motor nesnesinden çağırır
  }
}
