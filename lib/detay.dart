// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Detay extends StatelessWidget {
  const Detay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/modelgrid1.jpg",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
