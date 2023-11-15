import 'package:bangun_datar_app/controller/persegi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
  PersegiPage({super.key});

  final PersegiController _persegiController = Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Persegi Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/persegi.png", height: 100),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("Persegi"),
          ),
          Text(
              "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk yang sama panjang dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku. Persegi merupakan turunan dari segi empat yang mempunyai ciri khusus keempat sisinya sama panjang dan keempat sudutnya siku-siku."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _persegiController.sisi = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Sisi",
                  hintText: "Masukkan Sisi",
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    _persegiController.hitungLuas();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // text color
                      backgroundColor: Colors.greenAccent),
                  child: Text("Hitung Luas")),
              ),


              ElevatedButton(
                  onPressed: () {
                    _persegiController.hitungKeliling();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, // text color
                      backgroundColor: Colors.yellowAccent),
                  child: Text("Hitung Keliling")),
            ],
          ),
          Obx(
                () => Text(
              _persegiController.hasil.value,
              style: TextStyle(
                color: _persegiController.isHitungLuas.value
                    ? Colors.greenAccent
                    : Colors.yellowAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
