import 'package:CodeFrame/responsive/desktop_body.dart';
import 'package:CodeFrame/responsive/mobile_body.dart';
import 'package:CodeFrame/responsive/mobile_contact.dart';
import 'package:CodeFrame/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:CodeFrame/colours.dart';

import 'desktop_contact.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "C O D E F R A M E",
          style: TextStyle(fontSize: 23),
        )),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [darkBlue, lightBlue],
              begin: FractionalOffset(0.0, 0.0),
              end: FractionalOffset(1.0, 0.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: ResponsiveLayoutContact(
        mobileContact: const MyMobileContact(),
        desktopContact: const DesktopContact(),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [darkBlue, lightBlue],
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(" CodeFrame  |"),
            Text(
              "  ©",
              style: TextStyle(fontSize: 17),
            ),
            Text(" Copyrights  |"),
            Text("  Terms  |"),
            Text("  Policy  |"),
          ],
        ),
      ),
    );
  }
}
