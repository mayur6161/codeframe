import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:CodeFrame/colours.dart';
import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/hover.dart';

class MyDesktopBody extends StatefulWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  State<MyDesktopBody> createState() => _MyDesktopBodyState();
}

class _MyDesktopBodyState extends State<MyDesktopBody> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SmoothScrollWeb(
        controller: _controller,
        child: ListView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SlideInUp(
                    child: Container(
                      child: Stack(
                        children: [
                          Container(
                            width: width,
                            height: 620,
                          ),
                          SlideInUp(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 600,
                                  child: Image.asset("assets/webpic.png"),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 10,
                            bottom: 10,
                            child: Container(
                              width: width / 3,
                              height: 400,
                              child: SlideInRight(
                                  child: Image.asset("assets/mobilepic.png")),
                            ),
                          ),
                          Positioned(
                            left: 10,
                            bottom: 10,
                            child: Container(
                              height: 400,
                              width: width / 3,
                              child: SlideInLeft(
                                  child: Image.asset("assets/ipadpic.png")),
                            ),
                          ),
                          Container(
                            width: width,
                            height: 620,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // top space of the text
                                Spacer(),

                                // text container
                                SlideInLeft(
                                  child: Container(
                                    color: darkBlue,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 12,
                                          bottom: 10.0,
                                          top: 5.0),
                                      child: Text(
                                        'There Is No Perfect Time',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0),
                                      ),
                                    ),
                                  ),
                                ),

                                // Space Container
                                Container(
                                  height: 5.0,
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0,
                                        right: 12,
                                        bottom: 10.0,
                                        top: 5.0),
                                    child: Text(
                                      '',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0),
                                    ),
                                  ),
                                ),

                                SlideInLeft(
                                  child: Container(
                                    color: darkBlue,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 12,
                                          bottom: 10.0,
                                          top: 5.0),
                                      child: Text(
                                        'Its Better To Take Action Than',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0),
                                      ),
                                    ),
                                  ),
                                ),

                                // Space Container
                                Container(
                                  height: 5.0,
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0,
                                        right: 12,
                                        bottom: 10.0,
                                        top: 5.0),
                                    child: Text(
                                      '',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0),
                                    ),
                                  ),
                                ),

                                SlideInLeft(
                                  child: Container(
                                    color: darkBlue,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 12,
                                          bottom: 10.0,
                                          top: 5.0),
                                      child: Text(
                                        'Keep Waiting And Regretting',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0),
                                      ),
                                    ),
                                  ),
                                ),

                                //Container
                                Container(
                                  height: 350,
                                ),

                                // below space of the text
                                const Spacer(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Container
                  Container(
                    height: 60,
                  ),

                  // Our Services Container ------------------------------
                  SlideInUp(
                    child: Container(
                      color: lightBlue.withOpacity(0.2),
                      child: Column(
                        children: [
                          //Space on Top
                          Container(
                            height: 50,
                          ),

                          //Our Services ----------------------------------------------
                          SlideInUp(
                            child: Container(
                              child: Text(
                                "Our Services",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontFamily: "SFCMed",
                                ),
                              ),
                            ),
                          ),

                          //Container Space
                          Container(
                            height: 40,
                          ),

                          //Our Services Columns -------------------------------------
                          Column(
                            children: [
                              //Android IOS ------------------------------------------
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // beside space
                                  Container(
                                    width: width / 7,
                                  ),

                                  //first column
                                  Container(
                                    width: width / 3.5,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Android Development",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                              fontFamily: "SFCMed",
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Build Custom Android App With Play Store Support And Publish App On Play Store.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontFamily: "SFCMed",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //Middle space
                                  Container(
                                    width: width / 7,
                                  ),

                                  //Second column
                                  Container(
                                    width: width / 3.5,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "IOS Development",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                              fontFamily: "SFCMed",
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Build Apple Iphone Apps And Publish Apps On App Store.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontFamily: "SFCMed",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width / 7,
                                  ),
                                ],
                              ),

                              //Space between Two Rows .// second mac and windows
                              Container(
                                height: 30,
                              ),

                              // Mac and windows
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // beside space
                                  Container(
                                    width: width / 7,
                                  ),

                                  //first column
                                  SizedBox(
                                    width: width / 3.5,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Windows Development",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                              fontFamily: "SFCMed",
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Build Apps For Windows Operating System.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontFamily: "SFCMed",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //Middle space
                                  Container(
                                    width: width / 7,
                                  ),

                                  //Second column
                                  SizedBox(
                                    width: width / 3.5,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Mac OS Development",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                              fontFamily: "SFCMed",
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Build Apps For Apple Mac OS And Publishing App On Mac App Store.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontFamily: "SFCMed",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width / 7,
                                  ),
                                ],
                              ),

                              //MIddle space between windows and web
                              Container(height: 30),

                              //Web and Hardware
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // beside space
                                  Container(
                                    width: width / 7,
                                  ),

                                  //first column
                                  SizedBox(
                                    width: width / 3.5,
                                    child: Column(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            "Web Development",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                              fontFamily: "SFCMed",
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Build Custom Website That Supports  Mobile And Desktop Browser with Custom Layout.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontFamily: "SFCMed",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //Middle space
                                  Container(
                                    width: width / 7,
                                  ),

                                  //Second column
                                  SizedBox(
                                    width: width / 3.5,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "IT Support",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22,
                                              color: Colors.black,
                                              fontFamily: "SFCMed",
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Setup Office Hardware And Software. "
                                          "Get Help With IT Related Queries.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black,
                                            fontFamily: "SFCMed",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: width / 7,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          //Container
                          Container(
                            height: 70,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Space below Our services
                  Container(height: 40,),

                  //Quick Menu
                  Text(
                    "Quick Access",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontFamily: "SFCMed",
                    ),
                  ),

                  //Space below Quick Access
                  Container(height: 20,),

                  // Services App development and web development
                  Container(
                    child: Column(
                      children: [
                        // Android app development
                        SlideInUp(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Link(
                              uri: Uri.parse("/contactpage"),
                              builder: (context, followLink) => GestureDetector(
                                onTap: followLink,
                                child: Container(
                                  width: width / 2.5,
                                  child: const OnHoverButton(
                                    child: Card(
                                      shadowColor: darkBlue,
                                      elevation: 5.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: ListTile(
                                          hoverColor: Colors.transparent,
                                          leading: FaIcon(
                                            Icons.android_sharp,
                                            color: darkBlue,
                                            size: 38,
                                          ),
                                          title: Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            child: Text(
                                              "Android App Development",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19,
                                                fontFamily: "SFCMed",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Ios app development
                        SlideInUp(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Link(
                              uri: Uri.parse("/contactpage"),
                              builder: (context, followLink) => GestureDetector(
                                onTap: followLink,
                                child: Container(
                                  width: width / 2.5,
                                  child: const OnHoverButton(
                                    child: Card(
                                      shadowColor: darkBlue,
                                      elevation: 5.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: ListTile(
                                          hoverColor: Colors.transparent,
                                          leading: FaIcon(
                                            Icons.apple_rounded,
                                            color: darkBlue,
                                            size: 45,
                                          ),
                                          title: Padding(
                                            padding: EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              "IOS App Development",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19,
                                                fontFamily: "SFCMed",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        //web app development
                        SlideInUp(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Link(
                              uri: Uri.parse("/contactpage"),
                              builder: (context, followLink) => GestureDetector(
                                onTap: followLink,
                                child: Container(
                                  width: width / 2.5,
                                  child: const OnHoverButton(
                                    child: Card(
                                      shadowColor: darkBlue,
                                      elevation: 5.0,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: ListTile(
                                          hoverColor: Colors.transparent,
                                          leading: FaIcon(
                                            Icons.web_sharp,
                                            color: darkBlue,
                                            size: 35,
                                          ),
                                          title: Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.0),
                                            child: Text(
                                              "Web App Development",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19,
                                                fontFamily: "SFCMed",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Space between services and web image
                  Container(
                    height: 30,
                  ),

                  // Explore CodeFrame
                  JelloIn(
                    child: Container(
                      width: width / 1.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: lightBlue.withOpacity(0.2),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              "Explore CodeFrame",
                              style: TextStyle(
                                  fontSize: 23,
                                  color: darkBlue,
                                  fontFamily: "SFCMed"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 13.0,
                                bottom: 13.0,
                                left: 26.0,
                                right: 26.0),
                            child: Text(
                              "Building Software Is Expensive And Most Of The Time Making Own App Becomes A Dream Only. Do Not Have To Worry Anymore. We Are Here To Make Software Development More Affordable And To Bring Your Ideas Into Reality. Take Your Business And Ideas To The Next Level.",
                              style:
                                  TextStyle(fontSize: 19, fontFamily: "SFCMed"),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 13.0,
                                  right: 26.0,
                                  top: 10.0,
                                  bottom: 30.0),
                              child: Text(
                                "Start With CodeFrame",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "SFCMed",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Space up
                  Container(
                    height: 35,
                  ),
                  // Contact us text
                  Container(
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "SFCMed",
                          color: Colors.black),
                    ),
                  ),
                  //Space down
                  Container(
                    height: 20,
                  ),

                  // contact email
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width / 2.5,
                      child: Link(
                        uri: Uri.parse("/email_contact"),
                        builder: (context, followLink) => GestureDetector(
                          onTap: followLink,
                          child: Card(
                            shadowColor: darkBlue,
                            elevation: 5.0,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: FaIcon(
                                  Icons.email_outlined,
                                  color: darkBlue,
                                  size: 40,
                                ),
                                title: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: OnHoverText(builder: (isHovered) {
                                    final color =
                                        isHovered ? Colors.black : darkBlue;
                                    return Text(
                                      "Send Us Mail",
                                      style: TextStyle(
                                        color: color,
                                        fontSize: 19,
                                        fontFamily: "SFCMed",
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Whatsapp
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width / 2.5,
                      child: Card(
                        shadowColor: darkBlue,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: darkBlue,
                              size: 40,
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: OnHoverText(builder: (isHovered) {
                                final color =
                                    isHovered ? Colors.black : darkBlue;
                                return Text(
                                  "Chat On Whatsapp",
                                  style: TextStyle(
                                    color: color,
                                    fontSize: 19,
                                    fontFamily: "SFCMed",
                                  ),
                                );
                              }),
                            ),
                            onTap: () async {
                              const url = 'https://wa.me/+919673581742';

                              // ignore: deprecated_member_use
                              if (await canLaunch(url)) {
                                // ignore: deprecated_member_use
                                await launch(url, forceSafariVC: false);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),

                  // instagram
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: width / 2.5,
                      child: Card(
                        shadowColor: darkBlue,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: darkBlue,
                              size: 40,
                            ),
                            title: Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: OnHoverText(builder: (isHovered) {
                                final color =
                                    isHovered ? Colors.black : darkBlue;
                                return Text(
                                  "Follow Us on Instagram",
                                  style: TextStyle(
                                    color: color,
                                    fontSize: 19,
                                    fontFamily: "SFCMed",
                                  ),
                                );
                              }),
                            ),
                            onTap: () async {
                              const url =
                                  'https://www.instagram.com/codeframe15/';

                              // ignore: deprecated_member_use
                              if (await canLaunch(url)) {
                                // ignore: deprecated_member_use
                                await launch(url, forceSafariVC: false);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 50,
                  ),

                  // Terms and policy bar down
                  Container(
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------

// Desktop email contact page

class EmailContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
        centerTitle: true,
        elevation: 0,
      ),

      //Email contact

      body: SlideInUp(
        child: Container(
          // contact email
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
              ),

              Container(
                height: 20,
                child: const Text(
                  "Email Address",
                  style: TextStyle(fontSize: 19, fontFamily: "SFCMed"),
                ),
              ),

              Container(
                height: 30,
              ),

              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    shadowColor: darkBlue,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: SelectableText(
                        "codeframe15@gmail.com",
                        style: TextStyle(
                            fontSize: 19, fontFamily: "SFCMed", color: darkBlue),
                      ),
                    ),
                  ),
                ),
              ),

              Container(
                height: 40,
              ),

              // Gmail send Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Link(
                      target: LinkTarget.blank,
                      uri: Uri.parse("https://mail.google.com/"),
                      builder: (context, followLink) => GestureDetector(
                        onTap: followLink,
                        child: Card(
                          shadowColor: darkBlue,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: FaIcon(
                                    Icons.email_outlined,
                                    color: darkBlue,
                                    size: 40,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, right: 20.0),
                                  child: OnHoverText(builder: (isHovered) {
                                    final color =
                                        isHovered ? Colors.black : darkBlue;
                                    return Text(
                                      "Open Gmail",
                                      style: TextStyle(
                                        color: color,
                                        fontSize: 19,
                                        fontFamily: "SFCMed",
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // bottom navigation bar

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
