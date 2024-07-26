import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Icoon extends StatefulWidget {
  const Icoon({super.key});

  @override
  State<Icoon> createState() => _IcoonState();
}

class _IcoonState extends State<Icoon> with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;
  @override
  void initState(){
    _controller = AnimationController(
      duration: Duration(seconds: 1), 
    vsync: this);
    super.initState();
  }
  
@override
void dispose(){
  _controller.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                if (_isPlay == false){
                  _controller.forward();
                  _isPlay = true;
                }else{
                  _controller?.reverse();
                  _isPlay = false;
                }
                
              },
              child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: _controller,size: 100,color: Colors.green,),
            ),
            Animate(effects: [FadeEffect(duration: Duration(seconds: 5)),SlideEffect(curve: Curves.easeIn)], child: Text("Hello World!")),
            Text("Hello World").animate().slideY(begin: 2,end: 5),
            Text("Hello World").animate().fade(begin: .1,end: 1),
            Text("Hello World").animate().tint(color: Colors.amber).then().shake()
          ],
        ),
        
      ),
    );
  }
}