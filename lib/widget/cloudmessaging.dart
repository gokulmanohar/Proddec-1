//import 'package:flutter/material.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsManager {

  PushNotificationsManager._();

  factory PushNotificationsManager() => _instance;

  static final PushNotificationsManager _instance = PushNotificationsManager._();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  bool _initialized = false;
  //FirebaseMessaging firebaseMessaging = new FirebaseMessaging();
  
  Future<void> init() async {
    if (!_initialized) {
      // For iOS request permission first.
      _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
      sound:true,
      alert:true,
      badge:true
      )
      );
      _firebaseMessaging.configure();

      // For testing purposes print the Firebase Messaging token
      String token = await _firebaseMessaging.getToken();
      print("FirebaseMessaging token: $token");
      
      _initialized = true;
    }
  

    
    
  
}}