import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100.w,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/navbar1.png")),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/navbar2.png")),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/navbar3.png")),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/navbar4.png")),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/navbar5.png")),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ],
      ),
    );
  }
}
