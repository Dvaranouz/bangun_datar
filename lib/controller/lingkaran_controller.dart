import 'package:get/get.dart';

class LingkaranController extends GetxController{
  RxBool isHitungLuas = true.obs;

  int jari = 0;

  final hasil = "".obs;

  void hitungLuas() {
    double hitung = 3.14 * jari * jari ;
    hasil.value = "Hasil perhitungan dari $jari x $jari = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling() {
    double hitung = 2 * 3.14 * jari ;
    hasil.value = "Hasil perhitungan dari 2 x $jari = $hitung";
    isHitungLuas.value = false;
  }
}