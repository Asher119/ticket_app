import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Sign Up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
              ],
            ),SizedBox(height: 10,),
            Row(
              children: [
                Text("Start Your Journey with affordable price"),
              ],
            ),SizedBox(height: 30,),
            Row(
              children: [
                Text("EMAIL"),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Enter Your Email",
                        enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.black)),
                      )),SizedBox(height: 20,),

                      ElevatedButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign in",style: TextStyle(color: Colors.white),),SizedBox(width: 5),
                          Icon(Icons.check_circle,color: Colors.white)
                        ],
                      ),
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.orange),
                      ),SizedBox(height: 10,),
                      Text("Or Sign Up With"),SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(height: 80,width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade300),
                          child: Icon(Icons.facebook,size: 30,),),SizedBox(width: 10,),
                          Container(height: 80,width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade300),
                          child: Icon(Icons.facebook,size: 30,),),SizedBox(width: 10,),
                          Container(height: 80,width: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey.shade300),
                          child: Icon(Icons.apple,size: 30,),),
                        ],
                      ),SizedBox(height: 10,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Alredy Have an Account?"),SizedBox(width: 5,),
                          Text("Sign In",style: TextStyle(color: Colors.orange),)
                        ],
                      )
          ],
        ),
      ),
    );
  }
}