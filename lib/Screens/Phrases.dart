import 'package:flutter/material.dart';
import 'package:language_learningapp/Components/PhrasesItem.dart';
import 'package:language_learningapp/Models/PhrasesModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  final List<Phrase> phrasesList = const
  [
    Phrase(JpName: "Kuru nodesu ka?", EnName: "Are you coming?",
        Sound: 'sounds/phrases/are_you_coming.wav'),
    Phrase(JpName: "Kōdoku o wasurenaide kudasai!", EnName: "Don't Forget To Subscribe!",
        Sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Phrase(JpName: "Chōshi wa dōdesu ka?", EnName: "How are you feeling?",
      Sound: 'sounds/phrases/how_are_you_feeling.wav'),
    Phrase(JpName: "Watashi wa anime ga daisuki desu", EnName: "I love anime",
       Sound: 'sounds/phrases/i_love_anime.wav'),
    Phrase(JpName: "Watashi wa puroguramu ga daisuki desu",
        EnName: "I love programming",
      Sound: 'sounds/phrases/i_love_programming.wav'),
    Phrase(JpName: "Puroguramingu wa kantan desu", EnName: "Programming is easy",
        Sound: 'sounds/phrases/programming_is_easy.wav'),
    Phrase(JpName: "Anata no onamae wa nan desu ka?", EnName: "What is your name?",
        Sound: 'sounds/phrases/what_is_your_name.wav'),
    Phrase(JpName: "Doko e iku nodesu ka?", EnName: "Where are you going?",
       Sound: 'sounds/phrases/where_are_you_going.wav'),
    Phrase(JpName: "Hai, ikimasu", EnName: "Yes, I'm coming",
         Sound: 'sounds/phrases/yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF533a2f),title: Text("Phrases"),),
      body: ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index)
          {
            return PhrasesItem(Text1: phrasesList[index].JpName,
              Text2: phrasesList[index].EnName, Sound: phrasesList[index].Sound,);
          }),
    );
  }
}
