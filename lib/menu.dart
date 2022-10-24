import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_ui/play.dart';
import 'package:netflix_ui/widget/categories.dart';
import 'package:netflix_ui/widget/navbar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NetflixMenu extends StatefulWidget {
  const NetflixMenu({super.key});

  @override
  State<NetflixMenu> createState() => _NetflixMenuState();
}

class _NetflixMenuState extends State<NetflixMenu> {
  List<Map<String,dynamic>> categori = [
    {"resim": "assets/images/Trending1.png"},
    {"resim": "assets/images/Trending2.png"},
    {"resim": "assets/images/Trending3.png"},
    {"resim": "assets/images/Trending4.png"},
  ];

  List<Map<String,dynamic>> originals = [
{"resim": "assets/images/Originals1.png"},
    {"resim": "assets/images/Originals2.png"},
    {"resim": "assets/images/Originals3.png"},
    {"resim": "assets/images/Originals4.png"},
  ];
  List<Map<String,dynamic>> Popular = [
{"resim": "assets/images/Popular1.png"},
    {"resim": "assets/images/Popular2.png"},
    {"resim": "assets/images/Popular3.png"},
    {"resim": "assets/images/Popular4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                width: 100.w,
                height: 112,
                child: Image.asset(
                  "assets/images/netflixbanner.png",
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 39),
                  child: Center(
                      child: Text(
                    "NETFLIX",
                    style: TextStyle(
                        color: Color(0xffFF2929),
                        fontSize: 41.31,
                        fontWeight: FontWeight.bold),
                  )))
            ]),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Trending",
                    style: TextStyle(fontSize: 20.72, color: Color(0xffFFFFFF)),
                  ),
                ),
                Container(
                  child: SizedBox(
                    height: 150,
                    width: 500,
                    child: ListView.builder(
                      itemCount: categori.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => NetflixPlay(),));
                          },
                          child: CategoriesListview(
                              resimurl: categori[index]["resim"].toString()),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20,bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("Netflix Original",
                      style: TextStyle(fontSize: 20.72, color: Color(0xffFFFFFF))),
                ),
                Container(child: SizedBox(
                    height: 150,
                    width: 500,
                    child: ListView.builder(
                      itemCount: originals.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoriesListview(
                            resimurl: originals[index]["resim"].toString());
                      },
                    ),
                  ),),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 20, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("Popular on Netflix",
                      style: TextStyle(fontSize: 20.72, color: Color(0xffFFFFFF))),
                ),
                Container(child: SizedBox(
                    height: 150,
                    width: 500,
                    child: ListView.builder(
                      itemCount: Popular.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoriesListview(
                            resimurl: Popular[index]["resim"].toString());
                      },
                    ),
                  ),),
              ],
            ),
             
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
