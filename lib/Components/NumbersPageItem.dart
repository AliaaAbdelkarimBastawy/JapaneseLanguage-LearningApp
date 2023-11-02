import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class NumbersPageItem extends StatefulWidget {
  String Text1 = "";
  String Text2 = "";
  String Sound = "";
  String image;
   NumbersPageItem({Key? key, required this.Text1,
     required this.Text2, required this.image, required this.Sound}) : super(key: key);

  @override
  State<NumbersPageItem> createState() => _NumbersPageItemState();
}

class _NumbersPageItemState extends State<NumbersPageItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.orange,
      padding: EdgeInsets.only(right: 15),
      child: Row(
        children: [
          Container(
            color: Color(0xFFFFF6DE),
            child: Image.asset(widget.image,),
          ),
          SizedBox(
            width: 10,
          ),
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
