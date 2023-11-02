import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_learningapp/Screens/Colors.dart';
import 'package:language_learningapp/Screens/FamilyMembers.dart';
import 'package:language_learningapp/Screens/Numbers.dart';
import 'package:language_learningapp/Screens/Phrases.dart';

import '../Components/HomeContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6DE),
      appBar: AppBar(backgroundColor: const Color(0xFF533a2f),title: Text("Toku"),),
      body: Column(children: [
        ContainerHomePage(color: Colors.orange, text:"Numbers",
          onTap: () {
          //Context =ba3raf menha makan el home page fen, 3shan ahot 3aleha el screen el tanya
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return NumbersPage();
          }));
          },),
        ContainerHomePage(color: Colors.green, text:"Family Members", onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return FamilyMembersPage();
          }));
        },),
        ContainerHomePage(color: Colors.purple, text:"Colors", onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return ColorsPage();
          }));
        },),
        ContainerHomePage(color: Colors.blue, text:"Phrases", onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return PhrasesPage();
          }));
        },),
      ],),
    );
  }
  
}

