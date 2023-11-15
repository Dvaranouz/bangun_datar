import 'package:bangun_datar_app/controller/persegipanjang_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatelessWidget {
  PersegiPanjangPage({super.key});

  final PersegiPanjangController _persegipanjangController = Get.put(PersegiPanjangController());

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
          Image.asset("assets/ppanjang.png", height: 100),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("PersegiPanjang"),
          ),
          Text(
              "Persegi panjang (bahasa Inggris: rectangle) adalah bangun datar dua dimensi yang dibentuk oleh dua pasang sisi yang masing-masing sama panjang dan sejajar dengan pasangannya, dan memiliki empat buah sudut yang kesemuanya adalah sudut siku-siku."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _persegipanjangController.panjang = int.parse(value);
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
                      _persegipanjangController.hitungLuas();
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // text color
                        backgroundColor: Colors.greenAccent),
                    child: Text("Hitung Luas")),
              ),


              ElevatedButton(
                  onPressed: () {
                    _persegipanjangController.hitungKeliling();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, // text color
                      backgroundColor: Colors.yellowAccent),
                  child: Text("Hitung Keliling")),
            ],
          ),
          Obx(
                () => Text(
              _persegipanjangController.hasil.value,
              style: TextStyle(
                color: _persegipanjangController.isHitungLuas.value
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