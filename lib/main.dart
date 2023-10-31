// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:moda_application/user_account.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moda App',
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int profile_count = 10;
  static List<String> tum_fotolar = ["model1.jpg", "model2.jpg", "model3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.blueGrey,
              ))
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda App",
          style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
            //padding: EdgeInsets.symmetric(vertical: 1, horizontal: 15),
            //color: Colors.blueAccent,
            height: 120, //color: Colors.amber,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listelamani("assets/model1.jpg", "assets/chanellogo.jpg"),
                listelamani("assets/model2.jpg", "assets/louisvuitton.jpg"),
                listelamani("assets/model3.jpg", "assets/chloelogo.png"),
                listelamani("assets/model1.jpg", "assets/chanellogo.jpg"),
                listelamani("assets/model2.jpg", "assets/chanellogo.jpg"),
                listelamani("assets/model3.jpg", "assets/chanellogo.jpg"),
                listelamani("assets/model1.jpg", "assets/chanellogo.jpg"),
              ],
            ),
          ),
          Users_account(resim: "assets/model1.jpg", isim: "Daisy"),
          Users_account(resim: "assets/rido.jpg", isim: "Anam"),
          Users_account(resim: "assets/model3.jpg", isim: "Rukiye"),
        ],
      ),
    );
  }

  listelamani(String Imagepath, String logoPath) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15, bottom: 10, top: 5),
          child: Stack(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(Imagepath),
                radius: 34,
              ),
              Positioned(
                top: 42,
                left: 42,
                child: CircleAvatar(
                  backgroundImage: AssetImage(logoPath),
                  radius: 13,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 14),
          height: 30,
          width: 65,
          // ignore: sort_child_properties_last
          child: Center(
            child: Text(
              "Follow",
              style: TextStyle(color: Colors.white, fontFamily: "Montserrat"),
            ),
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.brown.shade400),
        )
      ],
    );
  }
}
