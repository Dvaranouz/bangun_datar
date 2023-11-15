import 'package:get/get.dart';

class SegitigaController extends GetxController{
  RxBool isHitungLuas = true.obs;

  int luas = 0;
  int keliling = 0;

  final hasil = "".obs;

  void hitungLuas() {
    double hitung =  luas * keliling / 2;
    hasil.value = "Hasil perhitungan dari 1/2 x $luas x $keliling = $hitung";
    isHitungLuas.value = true;
  }
  void hitungKeliling() {
    int hitung = luas + keliling;
    hasil.value = "Hasil perhitungan dari $luas + $keliling = $hitung";
    isHitungLuas.value = false;
  }
}