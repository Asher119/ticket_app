import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
List<String>options = ['option 1','option 2'];

class _HomeState extends State<Home> {
  Void? showbottom(){
    showModalBottomSheet<Void>(context: context, builder: (BuildContext context) {
     return Container(height: 100,width: 360,color: Colors.orange,);
    });
  }
  String currentoption = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              children: [SizedBox(width: 20,),
                Icon(Icons.arrow_back_ios,color: Colors.white,),SizedBox(width: 70,),
                Text("Search Flights",style: TextStyle(color: Colors.white,fontSize: 20),)
              ],
            )
          ),SizedBox(height: 20,),
          Row(
            children: [SizedBox(width: 20,),
              Text("Discover",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
            ],
          ),
          Row(
            children: [SizedBox(width: 20,),
              Text("a new world",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold)),
            ],
          ),SizedBox(height: 10,),
          Container(height:548 ,
            width: 360,
            
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: [Radio(activeColor: Colors.orange, value: options[0], groupValue: currentoption, onChanged: (value){
                        setState(() {
                          currentoption = value.toString();
                        });
                      }),
                        Text("One-way"),SizedBox(width: 50,),
                        Radio(activeColor: Colors.orange, value: options[1], groupValue: currentoption, onChanged: (value){
                        setState(() {
                          currentoption = value.toString();
                        });
                      }),
                        Text("Round-trip")
                      ],
                    ),
                  ),SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("From"),
                      
                    ],
                  ),
                  SizedBox(height: 40,
                    child: TextFormField(
                                  decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                          )),
                  ),
                  SizedBox(height: 10,),
                   Row(
                    children: [
                      Text("To"),
                      
                    ],
                  ),
                  SizedBox(height: 40,
                    child: TextFormField(
                                  decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                          )),
                  ),SizedBox(height: 10,),
                   Row(
                    children: [
                      Text("Departure Date"),
                      
                    ],
                  ),
                  SizedBox(height: 40,
                    child: TextFormField(
                                  decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)),
                          )),
                  ),SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Travelers"),
                    ],
                  ),
                  Container(height: 40,width: double.infinity,decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)),),SizedBox(height: 10,),
                  SizedBox(height: 15,),
                  SizedBox(width: double.infinity,
                    child: ElevatedButton(onPressed: showbottom, child: Text("Search flights",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(backgroundColor:Colors.orange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),
                  )
        
                ],
              ),
            ),)
        ],),
      ),
      
    );
  }
}