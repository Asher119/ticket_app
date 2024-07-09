import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:tickets_app/ContactPerson.dart';
import 'package:tickets_app/Home.dart';
import 'package:tickets_app/PassengerInfo.dart';

class BottomnavyScreen extends StatefulWidget {
  const BottomnavyScreen({super.key});

  @override
  State<BottomnavyScreen> createState() => _BottomnavyScreenState();
}

int currentindex = 0;   
final screen = [
  Home(),

  Pass(),

  Contact(),

  // MyHomePage(title: ''),
];

class _BottomnavyScreenState extends State<BottomnavyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[currentindex],
        bottomNavigationBar: BottomNavyBar(
          showElevation: false,
          selectedIndex: currentindex,
          onItemSelected: (value) {
            setState(() {
              currentindex = value;
            });
          },
          curve: Curves.easeIn,
          // use this to remove appBar's elevation
          // onItemSelected: (index) => setState(() {
          //   currentindex = index;
          // }),
          items: [
            BottomNavyBarItem(
                icon: Icon(
                  Icons.home,
                  color: currentindex == 0 ? Colors.orange : Colors.grey,
                ),
                title: Text('Home'),
                inactiveColor: Colors.grey,
                activeColor: currentindex == 0
                    ? Colors.orange
                    : const Color.fromARGB(255, 0, 0, 0)),
            BottomNavyBarItem(
                icon: Icon(
                  Icons.menu,
                  color: currentindex == 1 ? Colors.orange : Colors.grey,
                ),
                title: Text('Menu'),
                inactiveColor: Colors.orange,
                activeColor: currentindex == 1 ? Colors.orange : Colors.grey),
            BottomNavyBarItem(
                icon: Icon(
                  Icons.currency_rupee,
                  color: currentindex == 2 ? Colors.orange : Colors.grey,
                ),
                title: Text('Transaction'),
                // inactiveColor: Colors.orange,
                activeColor: currentindex == 2 ? Colors.orange : Colors.grey),
          ],
        ));
  }
}
