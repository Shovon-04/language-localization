// ignore_for_file: prefer_const_constructors, unused_element, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project4/Home_Screen.dart';
import 'package:project4/My_ads.dart';
import 'package:project4/add.dart';
import 'package:project4/chat.dart';
import 'package:project4/languages.dart';
import 'account.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en','US'),
      fallbackLocale:Locale('en','US') ,

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavController(),
    );
  }
}

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);
  @override
  State<BottomNavController> createState() =>_BottomNavController();

}

class _State {}

class _BottomNavController extends State<BottomNavController> {
  int _currentIndex = 0;
  final _pages = [HomeScreen(), Myads(), Add(), chat(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
         
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: "My Ads"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined), label: "chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Account"),
        ],
        selectedItemColor: Color(0xFF5364F4),
        unselectedItemColor: Color(0xFFC4C4C4),

        
        
        ),
           body: _pages[_currentIndex],
        );
    
  }

}
