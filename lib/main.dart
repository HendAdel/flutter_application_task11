import 'package:flutter/material.dart';
import 'package:flutter_application_task11/pages/home.dart';
import 'package:flutter_application_task11/pages/rooms.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(), routes: {'homeLink': (context) => HomePage(),
      'roomsLink':(context) => RoomsPage(),},
    );
  }
}

