import 'package:flutter/material.dart';
import 'package:language_learningapp/Components/ColorsItem.dart';

import '../Models/ColorsModel.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<ColorModel> ColorsList = const
  [
    ColorModel(JpName: "Kuro", EnName: "Black",
        Image: "assets/images/colors/color_black.png",
        Sound: 'sounds/colors/black.wav'),
    ColorModel(JpName: "chairo", EnName: "Brown",
        Image: "assets/images/colors/color_brown.png",
        Sound: 'sounds/colors/brown.wav'),
    ColorModel(JpName: "Hokorippoi kiiro", EnName: "Dusty Yellow",
        Image: "assets/images/colors/color_dusty_yellow.png",
        Sound: 'sounds/colors/dustyyellow.wav'),
    ColorModel(JpName: "Haiiro", EnName: "Gray",
        Image: "assets/images/colors/color_gray.png",
        Sound: 'sounds/colors/gray.wav'),
    ColorModel(JpName: "Midori", EnName: "green",
        Image: "assets/images/colors/color_green.png",
        Sound: 'sounds/colors/green.wav'),
    ColorModel(JpName: "Aka", EnName: "Red",
        Image: "assets/images/colors/color_red.png",
        Sound: 'sounds/colors/red.wav'),
    ColorModel(JpName: "Shiro", EnName: "White",
        Image: "assets/images/colors/color_white.png",
        Sound: 'sounds/colors/yellow.wav'),
    ColorModel(JpName: "Kiiro", EnName: "Yellow",
        Image: "assets/images/colors/yellow.png",
        Sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF533a2f),
        title: Text("Colors"),),
      body: ListView.builder(
          itemCount: ColorsList.length,
          itemBuilder: (context, index)
          {
            return ColorsItem(Text1: ColorsList[index].JpName,
              Text2: ColorsList[index].EnName,
              image: ColorsList[index].Image, Sound: ColorsList[index].Sound,);
          }),
    );
  }
}
