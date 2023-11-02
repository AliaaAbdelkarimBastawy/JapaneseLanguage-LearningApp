import 'package:flutter/material.dart';
import 'package:language_learningapp/Components/FamilyPageItem.dart';

import '../Models/FamilyModel.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);
  final List<Family> familyList = const
  [ Family(JpName: "Chichioya", EnName: "Father",
        Image: "assets/images/family_members/family_father.png",
        Sound: 'sounds/family_members/father.wav'),
    Family(JpName: "Musume", EnName: "Daughter",
        Image: "assets/images/family_members/family_daughter.png",
        Sound: 'sounds/family_members/daughter.wav'),
    Family(JpName: "Ojīsan", EnName: "Grand Father",
        Image: "assets/images/family_members/family_grandfather.png",
        Sound: 'sounds/family_members/grandfather.wav'),
    Family(JpName: "Hahaoya", EnName: "Mother",
        Image: "assets/images/family_members/family_mother.png",
        Sound: 'sounds/family_members/mother.wav'),
    Family(JpName: "Sobo", EnName: "Grand Mother",
        Image: "assets/images/family_members/family_grandmother.png",
        Sound: 'sounds/family_members/grandmother.wav'),
    Family(JpName: "Nīsan", EnName: "Older Brother",
        Image: "assets/images/family_members/family_older_brother.png",
        Sound: 'sounds/family_members/olderbother.wav'),
    Family(JpName: "Ane", EnName: "Older Sister",
        Image: "assets/images/family_members/family_older_sister.png",
        Sound: 'sounds/family_members/oldersister.wav'),
    Family(JpName: "Musuko", EnName: "Son",
        Image: "assets/images/family_members/family_son.png",
        Sound: 'sounds/family_members/son.wav'),
    Family(JpName: "otouto", EnName: "Younger Brother",
        Image: "assets/images/family_members/family_younger_brother.png",
        Sound: 'sounds/family_members/youngerbrohter.wav'),
    Family(JpName: "Imouto", EnName: "Younger Sister",
        Image: "assets/images/family_members/family_younger_sister.png",
        Sound: 'sounds/family_members/youngersister.wav'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF533a2f),
        title: Text("Family Members"),),
      body: ListView.builder(
          itemCount: familyList.length,
          itemBuilder: (context, index)
          {
            return FamilyPageItem(Text1: familyList[index].JpName,
              Text2: familyList[index].EnName,
              image: familyList[index].Image, Sound: familyList[index].Sound,);
          }),
    );
  }
}
