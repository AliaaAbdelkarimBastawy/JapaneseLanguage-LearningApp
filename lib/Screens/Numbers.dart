import 'package:flutter/material.dart';

import '../Components/NumbersPageItem.dart';
import '../Models/NumberModel.dart';

class NumbersPage extends StatelessWidget {
    const NumbersPage({Key? key}) : super(key: key);
   final List<Number> numbersList = const
   [
     Number(JpName: "Ichi", EnName: "One",
       Image: "assets/images/numbers/number_one.png",
         Sound: 'sounds/numbers/number_one_sound.mp3'),
     Number(JpName: "Ni", EnName: "Two",
       Image: "assets/images/numbers/number_two.png", Sound: 'sounds/numbers/number_two_sound.mp3'),
     Number(JpName: "San", EnName: "Three",
       Image: "assets/images/numbers/number_three.png", Sound: 'sounds/numbers/number_three_sound.mp3'),
     Number(JpName: "Shi", EnName: "Four",
       Image: "assets/images/numbers/number_four.png", Sound: 'sounds/numbers/number_four_sound.mp3'),
     Number(JpName: "Go", EnName: "Five",
       Image: "assets/images/numbers/number_five.png", Sound: 'sounds/numbers/number_five_sound.mp3'),
     Number(JpName: "Roku", EnName: "Six",
         Image: "assets/images/numbers/number_six.png", Sound: 'sounds/numbers/number_six_sound.mp3'),
     Number(JpName: "Sebun", EnName: "Seven",
         Image: "assets/images/numbers/number_seven.png", Sound: 'sounds/numbers/number_seven_sound.mp3'),
     Number(JpName: "Hachi", EnName: "Eight",
         Image: "assets/images/numbers/number_eight.png", Sound: 'sounds/numbers/number_eight_sound.mp3'),
     Number(JpName: "Kyū", EnName: "Nine",
         Image: "assets/images/numbers/number_nine.png", Sound: 'sounds/numbers/number_nine_sound.mp3'),
     Number(JpName: "Jū", EnName: "Ten",
         Image: "assets/images/numbers/number_ten.png", Sound: 'sounds/numbers/number_ten_sound.mp3'),
   ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: const Color(0xFF533a2f),title: Text("Numbers"),),
      body: ListView.builder(
        itemCount: numbersList.length,
          itemBuilder: (context, index)
      {
        return NumbersPageItem(Text1: numbersList[index].JpName,
          Text2: numbersList[index].EnName,
          image: numbersList[index].Image, Sound: numbersList[index].Sound,);
      }),
    );
  }
}


