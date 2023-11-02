import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhrasesItem extends StatefulWidget {
  String Text1 = "";
  String Text2 = "";
  String Sound = "";
  PhrasesItem({Key? key, required this.Text1,
    required this.Text2, required this.Sound}) : super(key: key);

  @override
  State<PhrasesItem> createState() => _NumbersPageItemState();
}

class _NumbersPageItemState extends State<PhrasesItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.blue,
      padding: EdgeInsets.fromLTRB(15,0,15,0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(widget.Text1, style: TextStyle(color: Colors.white),),
              SizedBox(
                height: 3,
              ),
              Text(widget.Text2, style: TextStyle(color: Colors.white),),
            ],
          ),
          Spacer(flex: 1,),
          IconButton(onPressed: () async {
            final player = AudioPlayer(); // Audio player// will immediately start playing
            player.play(AssetSource(widget.Sound));

          }, icon: Icon(Icons.play_arrow, color: Colors.white,)),
        ],
      ),
    );
  }
}
