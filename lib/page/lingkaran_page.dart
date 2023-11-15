import 'package:bangun_datar_app/controller/lingkaran_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LingkaranPage extends StatelessWidget {
  LingkaranPage({super.key});

  final LingkaranController _lingkaranController = Get.put(LingkaranController());

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
          Image.asset("assets/lingkaran.png", height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text("PersegiPanjang"),
          ),
          Text(
              "pengertian lingkaran adalah bangun datar dua dimensi yang terbentuk dari sekumpulan titik dengan jarak yang konstan atau teratur dari titik tetap pada sebuah bidang. Titik tetap pada sebuah bangun datar lingkaran ini disebut juga dengan titik asal atau titik pusat lingkaran."),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              onChanged: (value) {
                _lingkaranController.jari = int.parse(value);
              },
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: "Jari-Jari",
                  hintText: "Masukkan Jari-Jari",
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
                      _lingkaranController.hitungLuas();
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white, // text color
                        backgroundColor: Colors.greenAccent),
                    child: Text("Hitung Jari-Jari")),
              ),
              ElevatedButton(
                  onPressed: () {
                    _lingkaranController.hitungKeliling();
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, // text color
                      backgroundColor: Colors.yellowAccent),
                  child: Text("Hitung Keliling")),
            ],
          ),
          Obx(
                () => Text(
              _lingkaranController.hasil.value,
              style: TextStyle(
                color: _lingkaranController.isHitungLuas.value
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