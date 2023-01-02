
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/details.screen.dart';

import 'screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: TabsScreen(),

      initialRoute: '/',
      routes: {
        '/':(context) => TabsScreen(),
       DetailsScreen.screenRoute:(ctx) => DetailsScreen(),
      },
    );
  }
}