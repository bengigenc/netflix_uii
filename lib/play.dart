// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NetflixPlay extends StatefulWidget {
  const NetflixPlay({super.key});

  @override
  State<NetflixPlay> createState() => _NetflixPlayState();
}

class _NetflixPlayState extends State<NetflixPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 279,
                  width: 428,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/netflixplay.png"))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 195, left: 10),
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/netflixplay2.png"))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 300, right: 10),
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 60,
                            width: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 28,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/netflixplayplus.png"))),
                                ),
                                Text(
                                  "My list",
                                  style: TextStyle(
                                      fontSize: 10.29,
                                      color: Color(0xffFFFFFF)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 35,
                                  width: 34,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/netflixplaylike.png"))),
                                ),
                                Text(
                                  "Like",
                                  style: TextStyle(
                                      fontSize: 10.29,
                                      color: Color(0xffFFFFFF)),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 60,
                              width: 40,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    height: 23,
                                    width: 38,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/netflixplayback.png"))),
                                  ),
                                  Text(
                                    "Share",
                                    style: TextStyle(
                                        fontSize: 10.29,
                                        color: Color(0xffFFFFFF)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 40, left: 10,right: 10),
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color(0xffE32727)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/netflixplayicon.png"))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Play",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 29.86,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {},
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 90.11,
              width: 330,
              child: Text(
                "Transformers is a series of American science fiction action films based on the Transformers franchise, which began in the 1980s.",
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 18.99),
              ),
            ),
            Container(
              width: 280,
              margin: EdgeInsets.only(top: 40, right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/netflixplaypic1.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/netflixplaypic2.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/netflixplaypic3.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffFFFFFF)),
                        borderRadius: BorderRadius.circular(40),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/netflixplaypic4.png"))),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20,left: 10),
              alignment: Alignment.topLeft,
              child: Text(
                "Trailers & more",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 17.6,
                    fontWeight: FontWeight.bold),
              ),
            ),
            
            // ignore: prefer_const_literals_to_create_immutables
            Stack( 
              children: [
            Container(margin: EdgeInsets.only(top: 13),
              child: Divider(
                color: Color(0xff4E4B4B),
                thickness: 2,
                height: 0,
              ),
            ),        Divider(
              color: Color(0xffE32727),
              thickness: 5,
              height: 20,
              indent: 11,
              endIndent: 259,
            ),],),

            
            Container(
              margin: EdgeInsets.only(top: 40,right: 10,
              left: 10),
              child: SizedBox(
                height: 159,
                width: 382,
                child: Image.asset("assets/images/netflixplaytrailersmore.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
