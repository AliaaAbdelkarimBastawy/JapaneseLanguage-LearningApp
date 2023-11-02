import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerHomePage extends StatelessWidget {
  Color color;
  String text;
  Function() onTap;  // = VoidCallback? onTap;

  ContainerHomePage({Key? key, required this.color, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.centerLeft,
          height: 60,
          decoration: BoxDecoration(color: color,),
          width: double.infinity,
          child:  Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(text,
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,
                  color: Colors.white),),
          )),
    );
  }
}
