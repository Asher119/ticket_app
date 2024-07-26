import 'package:animated_floating_buttons/widgets/animated_floating_action_button.dart';
import 'package:flutter/material.dart';

class Anime extends StatefulWidget {
   Anime({super.key});
  

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {

  final GlobalKey<AnimatedFloatingActionButtonState> key =GlobalKey<AnimatedFloatingActionButtonState>();

  Widget float1() {
    return Container(
      child: FloatingActionButton(
        onPressed: (){},
        heroTag: "btn1",
        tooltip: 'First button',
        child: Icon(Icons.rocket),
        splashColor: Colors.greenAccent,
      ),
    );
}

Widget float2() {
    return Container(
      child: FloatingActionButton(
        onPressed: (){},
        heroTag: "btn2",
        tooltip: 'Second button',
        child: Icon(Icons.add),
        splashColor: Colors.greenAccent,
      ),
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: AnimatedFloatingActionButton(
        //Fab list
        fabButtons: <Widget>[
            float1(), float2()
        ],
        key : key,
        colorStartAnimation: Colors.blue,
        colorEndAnimation: Colors.red,
        animatedIconData: AnimatedIcons.menu_close //To principal button
    ),
    );
  }
}