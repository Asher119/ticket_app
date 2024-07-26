import 'package:flutter/material.dart';
import 'package:loading_icon_button/loading_icon_button.dart';

class Loader extends StatefulWidget {
  const Loader({super.key});

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> {

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(padding: EdgeInsets.only(left: 10,right: 10),
            width: MediaQuery.of(context).size.width,
          height: 60,
            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red), onPressed: (){
              setState(() {
                isLoading = true;
              });
              Future.delayed(Duration(seconds: 5),(){
                setState(() {
                  isLoading = false;
                });
              }
              );
            }, child: isLoading? Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Loading...",style: TextStyle(color: Colors.white),),SizedBox(width: 10,),
                CircularProgressIndicator(color: Colors.white,),
              ],
            ): Text("Submit",style: TextStyle(color: Colors.white),
            )
            )
            ),SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                Center(
                  child: ArgonButton(
                    height: 50,
                    roundLoadingShape: true,
                    width: 200,
                    onTap: (startLoading, stopLoading, btnState) {
                      startLoading();
                      Future.delayed(const Duration(seconds: 3), () {
                        stopLoading();
                      });
                    },
                    loader: const Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.white,
                        ),
                      ),
                    ),
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    borderRadius: 5.0,
                    color: const Color(0xFFfb4747),
                  ),
                ),
              ],
            ),

        ],),
      ),
    );
  }
}