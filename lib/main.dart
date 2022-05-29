import 'package:CodeFrame/responsive/contact_page.dart';
import 'package:CodeFrame/responsive/desktop_body.dart';
import 'package:CodeFrame/responsive/mobile_contact.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CodeFrame',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/contactpage": (context) => ContactPage(),
        "/email_contact" : (context) => EmailContactPage(),
      },
    );
  }
}
