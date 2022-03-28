// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'app_name'.tr,
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'app_title'.tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(Locale('en','US'),);
              }, 
              child: Text('English')
              ),
              ElevatedButton(
              onPressed: () {
                 Get.updateLocale(Locale('bn','BD'),);
              }, 
              child: Text('Bangla')
              )
          ],
        ),
      ),
    );
  }
}
