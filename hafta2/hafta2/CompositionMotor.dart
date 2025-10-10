// Motor sınıfı: Arabanın bir parçası
class Motor {
  String tur;
  int beygirGucu;

  Motor(this.tur, this.beygirGucu);

  void motorBilgi() {
    print("Motor türü: $tur, Beygir Gücü: $beygirGucu HP");
  }
}
