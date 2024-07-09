import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}
List<String>options = ['option 1','option 2'];

class _ContactState extends State<Contact> {
   String currentoption = options[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                  ],
                ),
              ),SizedBox(height: 20,),
              Row(
                children: [
                  Text("Contact Person Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Radio(activeColor: Colors.orange, value: options[0], groupValue: currentoption, onChanged: (value){
                                setState(() {
                                  currentoption = value.toString();
                                });
                              }),
                              Text("Male"),SizedBox(width: 20,),
                              Radio(activeColor: Colors.orange, value: options[1], groupValue: currentoption, onChanged: (value){
                                setState(() {
                                  currentoption = value.toString();
                                });
                              }),
                              Text("Female"),
                ],
              ),SizedBox(height: 10,),
              SizedBox(height: 50,
                child: TextFormField(
                                      decoration: InputDecoration(hintText: "Full Name",
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                              )),
              ),SizedBox(height: 20,),
              SizedBox(height: 50,
                child: TextFormField(
                                      decoration: InputDecoration(hintText: "Email Address",
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                              )),
              ),SizedBox(height: 20,),
              SizedBox(height: 50,
                child: TextFormField(
                                      decoration: InputDecoration(hintText: "Country code",
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                              )),
              ),SizedBox(height: 20,),
              SizedBox(height: 50,
                child: TextFormField(
                                      decoration: InputDecoration(hintText: "Phone number",
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                              )),
              ),SizedBox(height: 20,),
              SizedBox(height: 50,
                child: TextFormField(
                                      decoration: InputDecoration(hintText: "ID card number",
                                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey)),
                              )),
              ),SizedBox(height: 20,),
              Text("This contact is for e-ticket and refund / rescheduling",style: TextStyle(color: Colors.grey),),SizedBox(height: 20,),
              SizedBox(width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: Text("Save Changes",style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),),
              )
                    
            ],
          ),
        ),
      ),
    );
  }
}