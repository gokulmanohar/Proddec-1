// Created By Arjun Vishnu Varma(2018-2022 CS Batch) //

//import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:proddeccec/Screen/home.dart';
//import 'package:proddeccec/widget/cloudmessaging.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';


void main() => runApp(
//    DevicePreview(
 // builder: (context) => 
 
  MyApp(),
//),
);


class MyApp extends StatelessWidget {

  @override
 
    
    
  Widget build(BuildContext context) {

    return MaterialApp(
      
    // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'CeApp',
           home: 
       HomePage()
       );
  }
}


// Created By Arjun Vishnu Varma(2018-2022 CS Batch) //