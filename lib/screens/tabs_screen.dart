
import 'package:flutter/material.dart';

import 'for_screen.dart';
import 'home_screen.dart';

import 'sec_screen.dart';
import 'thr_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedIndex = 0;

  final screens = [
    HomeScreen(),
    SecScreen(),
    ThrScreen(),
    ForScreen(),
  ];
  @override
  Widget build(BuildContext context) {
     homeIcon(){
      return Container(
        height: 34,width: 75,
      decoration: BoxDecoration(color: Colors.greenAccent,
      borderRadius: BorderRadius.circular(25)),
      child: Row(children: [
        Icon(Icons.home,color: Colors.blue,)
        ,Text('Home',style: TextStyle(color: Colors.blue),)
      ],),
      );
    }
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home',backgroundColor: Colors.blue,activeIcon:homeIcon()),
          BottomNavigationBarItem(icon: Icon(Icons.bolt), label: 'new',backgroundColor: Colors.blue,),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite',backgroundColor: Colors.blue,),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Personal',backgroundColor: Colors.blue,
         ),
        ],
        
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.greenAccent,
        iconSize: 30,
        
        elevation: 12,
 
        onTap: (index) => setState(() {
          _selectedIndex = index;
        }),
      ),
    );
  }
}
