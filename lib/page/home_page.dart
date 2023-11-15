import 'package:bangun_datar_app/page/persegi_page.dart';
import 'package:bangun_datar_app/page/persegi_panjang_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersegiPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/persegi.png", title: "persegi")),
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PersegiPanjangPage()));
              },
              child: CustomMenu(
                  imageAssets: "assets/ppanjang.png", title: "persegi panjang")),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAssets: "assets/segitiga.jpg", title: "segitiga")),
              Expanded(child: CustomMenu(imageAssets: "assets/segitiga.jpg", title: "segitiga")),
              Expanded(child: CustomMenu(imageAssets: "assets/segitiga.jpg", title: "segitiga")),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
          ),
          Text(title),
        ],
      ),
    );
  }
}
