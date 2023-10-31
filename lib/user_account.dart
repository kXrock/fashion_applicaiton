// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:moda_application/detay.dart';

class Users_account extends StatelessWidget {
  final String resim;
  final String isim;
  const Users_account({required this.isim, required this.resim, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: Material(
        //color: Colors.blue,
        elevation: 16,
        // ignore: sort_child_properties_last
        borderRadius: BorderRadius.circular(32),
        child: Container(
          padding: EdgeInsets.only(top: 20),
          height: 575,
          width: double.infinity,
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(),
                    child: Text(
                      isim,
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  subtitle: Text(
                    "34 mins ago",
                    style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(resim),
                    radius: 34,
                  ),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  "This official website features a ribbed knit zipper jacket that is "
                  "modern and stylish. It looks very temparament and is recommend to friends.",
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Detay();
                            },
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 0, left: 20),
                        height: 250,
                        width: 170,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.brown.shade400, blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.amber,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/modelgrid1.jpg",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Container(
                          alignment: Alignment.topCenter,
                          height: 120,
                          width: (MediaQuery.of(context).size.width - 100) / 2,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.brown.shade400, blurRadius: 10)
                            ],
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.blue,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/modelgrid2.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        height: 120,
                        width: (MediaQuery.of(context).size.width - 100) / 2,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.brown.shade400, blurRadius: 10)
                          ],
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              "assets/modelgrid3.jpg",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 4, top: 4),
                        child: Text(
                          "# Lois Vuitton",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800,
                              color: Colors.brown.shade500,
                              fontSize: 13),
                        )),
                    //height: 20,

                    decoration: BoxDecoration(
                      color: Colors.brown.withOpacity(0.15),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 4, top: 4),
                        child: Text(
                          "# Ridvaniye Kaya",
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w800,
                              color: Colors.brown.shade500,
                              fontSize: 13),
                        )),
                    //height: 20,

                    decoration: BoxDecoration(
                      color: Colors.brown.withOpacity(0.15),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 3,
                color: Colors.brown.shade100,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Row(children: [
                      Icon(
                        Icons.reply_rounded,
                        color: Colors.brown.withOpacity(0.4),
                        size: 36,
                      ),
                      Text(
                        "1.7k",
                        style: TextStyle(color: Colors.brown, fontSize: 20),
                      )
                    ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 36),
                    child: Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Row(children: [
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.4),
                          size: 28,
                        ),
                        Text(
                          "325",
                          style: TextStyle(color: Colors.brown, fontSize: 20),
                        )
                      ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
