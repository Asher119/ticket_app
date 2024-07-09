import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          actions: [
            Icon(
              Icons.home,
              color: Colors.yellow,
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(left: 70),
            child: Text(
              "Hello",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
        body: Column(children: [
          Column(
            children: [
              Row(
                children: [
                  Text('welcome'),
                  SizedBox(width: 20,),
                  Text('hello'),
                  SizedBox(width:40,),
                  Text('welcome')
                ],
              ),
            ],
          )
        ]));
  }
}
