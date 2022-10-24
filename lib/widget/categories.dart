import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoriesListview extends StatefulWidget {
  const CategoriesListview({super.key, required this.resimurl});

  final String resimurl;

  @override
  State<CategoriesListview> createState() => _CategoriesListviewState();
}


class _CategoriesListviewState extends State<CategoriesListview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      height: 150,
      width: 100,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(widget.resimurl),fit: BoxFit.cover), 
      borderRadius: BorderRadius.circular(10)),
    );
  }
}