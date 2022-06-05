//import 'package:CodeFrame/responsive/mobile_contact.dart';
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:CodeFrame/colours.dart';
//import 'package:animate_do/animate_do.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:smooth_scroll_web/smooth_scroll_web.dart';
//import 'package:url_launcher/link.dart';
//import 'package:url_launcher/url_launcher.dart';
//
//import '../widgets/hover.dart';
//
//class MyMobileBody extends StatefulWidget {
//  const MyMobileBody({Key? key}) : super(key: key);
//
//  @override
//  State<MyMobileBody> createState() => _MyMobileBodyState();
//}
//
//class _MyMobileBodyState extends State<MyMobileBody> {
//  final ScrollController _controller = ScrollController();
//
//  @override
//  Widget build(BuildContext context) {
//    double width = MediaQuery.of(context).size.width;
//    return Scaffold(
//      appBar: AppBar(
//        title: const Center(
//            child: Text(
//              "C O D E F R A M E",
//              style: TextStyle(fontSize: 23),
//            )),
//        flexibleSpace: Container(
//          decoration: const BoxDecoration(
//            gradient: LinearGradient(
//              colors: [darkBlue, lightBlue],
//              begin: FractionalOffset(0.0, 0.0),
//              end: FractionalOffset(1.0, 0.0),
//              stops: [0.0, 1.0],
//              tileMode: TileMode.clamp,
//            ),
//          ),
//        ),
//        elevation: 0,
//      ),
//      body: SmoothScrollWeb(
//        controller: _controller,
//        child: ListView(
//          controller: _controller,
//          physics: const NeverScrollableScrollPhysics(),
//          children: [
//            SingleChildScrollView(
//              child: Column(
//                children: [
//                  //mobile and tablet image
//                  Container(
//                    height: 400,
//                    child: Padding(
//                      padding: const EdgeInsets.all(1.0),
//                      child: Stack(
//                        children: [
//                          Padding(
//                            padding: const EdgeInsets.all(1.0),
//                            child: Positioned(
//                                child: SlideInUp(
//                                    child: Image.asset("assets/webpic.png"))),
//                          ),
//                          Positioned(
//                              left: 1,
//                              bottom: 1,
//                              child: SizedBox(
//                                  height: 280,
//                                  child: SlideInLeft(
//                                      child:
//                                      Image.asset("assets/ipadpic.png")))),
//                          Positioned(
//                              right: 1,
//                              bottom: 1,
//                              child: SizedBox(
//                                  height: 300,
//                                  child: SlideInRight(
//                                      child: Image.asset(
//                                          "assets/mobilepic.png")))),
//                          Positioned(
//                            left: 1,
//                            top: 5,
//                            child: Column(
//                              crossAxisAlignment: CrossAxisAlignment.start,
//                              children: [
//                                SlideInLeft(
//                                  child: Container(
//                                    color: darkBlue,
//                                    child: Padding(
//                                      padding: const EdgeInsets.only(
//                                          left: 10.0,
//                                          right: 5.0,
//                                          top: 3.0,
//                                          bottom: 3.0),
//                                      child: Text(
//                                        "There Is No Perfect Time.",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontFamily: "SFCMed",
//                                            color: Colors.white),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                Container(height: 3),
//                                SlideInLeft(
//                                  child: Container(
//                                    color: darkBlue,
//                                    child: Padding(
//                                      padding: const EdgeInsets.only(
//                                          left: 10.0,
//                                          right: 5.0,
//                                          top: 3.0,
//                                          bottom: 3.0),
//                                      child: Text(
//                                        "Its Better To Take Action",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontFamily: "SFCMed",
//                                            color: Colors.white),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                                Container(height: 3),
//                                SlideInLeft(
//                                  child: Container(
//                                    color: darkBlue,
//                                    child: Padding(
//                                      padding: const EdgeInsets.only(
//                                          left: 10.0,
//                                          right: 5.0,
//                                          top: 3.0,
//                                          bottom: 3.0),
//                                      child: Text(
//                                        "Than Keep Waiting Regretting.",
//                                        style: TextStyle(
//                                            fontSize: 16.0,
//                                            fontFamily: "SFCMed",
//                                            color: Colors.white),
//                                      ),
//                                    ),
//                                  ),
//                                ),
//                              ],
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//
//                  //Space below Images
//                  Container(
//                    height: 40,
//                  ),
//
//                  //Quick Access
//                  SlideInUp(
//                    child: Text(
//                      "Quick Access",
//                      style: TextStyle(
//                        fontSize: 25,
//                        color: Colors.black,
//                        fontFamily: "SFCMed",
//                      ),
//                    ),
//                  ),
//
//                  //Space below Quick Access
//                  Container(
//                    height: 20,
//                  ),
//
//                  Container(
//                    child: Column(
//                      children: [
//                        // Android app development
//                        SlideInUp(
//                          child: Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: OnHoverButton(
//                              child: Link(
//                                uri: Uri.parse("/contactpage"),
//                                builder: (context, followLink) =>
//                                    GestureDetector(
//                                      onTap: followLink,
//                                      child: Card(
//                                        shadowColor: darkBlue,
//                                        elevation: 5,
//                                        child: Padding(
//                                          padding: const EdgeInsets.all(10.0),
//                                          child: Row(
//                                            children: [
//                                              Align(
//                                                alignment: Alignment.center,
//                                                child: Padding(
//                                                  padding: const EdgeInsets.only(
//                                                      right: 15.0, left: 10.0),
//                                                  child: Container(
//                                                      height: 50,
//                                                      width: 50,
//                                                      child: Image.asset(
//                                                          "assets/android_logo.png")),
//                                                ),
//                                              ),
//                                              Text(
//                                                "Android App Development",
//                                                style: TextStyle(
//                                                    fontSize: 19,
//                                                    fontFamily: "SFCMed"),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                              ),
//                            ),
//                          ),
//                        ),
//
//                        // Ios app development
//                        SlideInUp(
//                          child: Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: OnHoverButton(
//                              child: Link(
//                                uri: Uri.parse("/contactpage"),
//                                builder: (context, followLink) =>
//                                    GestureDetector(
//                                      onTap: followLink,
//                                      child: Card(
//                                        shadowColor: darkBlue,
//                                        elevation: 5,
//                                        child: Padding(
//                                          padding: const EdgeInsets.all(10.0),
//                                          child: Row(
//                                            children: [
//                                              Align(
//                                                alignment: Alignment.center,
//                                                child: Padding(
//                                                  padding: const EdgeInsets.only(
//                                                      right: 15.0, left: 10.0),
//                                                  child: Container(
//                                                    height: 50,
//                                                    width: 50,
//                                                    child: Image.asset(
//                                                        "assets/Apple_logo.png"),
//                                                  ),
//                                                ),
//                                              ),
//                                              Text(
//                                                "IOS App Development",
//                                                style: TextStyle(
//                                                    fontSize: 19,
//                                                    fontFamily: "SFCMed"),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                              ),
//                            ),
//                          ),
//                        ),
//
//                        //web app development
//                        SlideInUp(
//                          child: Padding(
//                            padding: const EdgeInsets.all(8.0),
//                            child: OnHoverButton(
//                              child: Link(
//                                uri: Uri.parse("/contactpage"),
//                                builder: (context, followLink) =>
//                                    GestureDetector(
//                                      onTap: followLink,
//                                      child: Card(
//                                        shadowColor: darkBlue,
//                                        elevation: 5,
//                                        child: Padding(
//                                          padding: const EdgeInsets.all(10.0),
//                                          child: Row(
//                                            children: [
//                                              Align(
//                                                alignment: Alignment.center,
//                                                child: Padding(
//                                                  padding: const EdgeInsets.only(
//                                                      right: 15.0, left: 10.0),
//                                                  child: Container(
//                                                    height: 50,
//                                                    width: 50,
//                                                    child: Image.asset(
//                                                        "assets/web_logo.png"),
//                                                  ),
//                                                ),
//                                              ),
//                                              Text(
//                                                "Web App Development",
//                                                style: TextStyle(
//                                                    fontSize: 19,
//                                                    fontFamily: "SFCMed"),
//                                              ),
//                                            ],
//                                          ),
//                                        ),
//                                      ),
//                                    ),
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//
//                  Container(height: 20),
//                  // Explore CodeFrame
//                  JelloIn(
//                    child: Container(
//                      color: lightBlue.withOpacity(0.2),
//                      child: Column(
//                        children: [
//                          Padding(
//                            padding: const EdgeInsets.all(13.0),
//                            child: Text(
//                              "Explore CodeFrame",
//                              style: TextStyle(
//                                  fontSize: 23,
//                                  color: darkBlue,
//                                  fontFamily: "SFCMed"),
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.all(13.0),
//                            child: Text(
//                              "Building Software Is Expensive And Most Of The Time Making Own App Becomes A Dream Only. Do Not Have To Worry Anymore. We Are Here To Make Software Development More Affordable And To Bring Your Ideas Into Reality. Take Your Business And Ideas To The Next Level.",
//                              style:
//                              TextStyle(fontSize: 19, fontFamily: "SFCMed"),
//                            ),
//                          ),
//                          Align(
//                            alignment: Alignment.bottomRight,
//                            child: Padding(
//                              padding: const EdgeInsets.only(
//                                  left: 13.0,
//                                  right: 13.0,
//                                  top: 10.0,
//                                  bottom: 30.0),
//                              child: Text(
//                                "Start With CodeFrame",
//                                style: TextStyle(
//                                  fontSize: 18,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//
//                  //Space between Explore and contact us
//                  Container(
//                    height: 35,
//                  ),
//                  // Contact us text
//                  Container(
//                    child: Text(
//                      "Contact Us",
//                      style: TextStyle(
//                          fontSize: 25,
//                          fontFamily: "SFCMed",
//                          color: Colors.black),
//                    ),
//                  ),
//                  //Space down
//                  Container(
//                    height: 20,
//                  ),
//
//                  // contact email
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Card(
//                      shadowColor: darkBlue,
//                      elevation: 5.0,
//                      child: Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: ListTile(
//                          leading: FaIcon(
//                            Icons.email_outlined,
//                            color: darkBlue,
//                            size: 40,
//                          ),
//                          title: Padding(
//                            padding: const EdgeInsets.only(left: 10.0),
//                            child: OnHoverText(builder: (isHovered) {
//                              final color = isHovered ? Colors.black : darkBlue;
//                              return Text(
//                                "Send Us Mail",
//                                style: TextStyle(
//                                  color: color,
//                                  fontSize: 19,
//                                  fontFamily: "SFCMed",
//                                ),
//                              );
//                            }),
//                          ),
//                          onTap: () async {
//                            final Uri params = Uri(
//                              scheme: 'mailto',
//                              path: 'codeframe15@gmail.com',
//                              query:
//                              'subject=CodeFrame User Mail&body=Hello Please Mention Your Name And Details About Your Project. If You Would Like To contacted Through Phone Call Or Whatsapp Please Mention Your Number.',
//                            );
//
//                            var url = params.toString();
//                            // ignore: deprecated_member_use
//                            if (await canLaunch(url)) {
//                              // ignore: deprecated_member_use
//                              await launch(url);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                        ),
//                      ),
//                    ),
//                  ),
//
//                  // Whatsapp
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Card(
//                      shadowColor: darkBlue,
//                      elevation: 5.0,
//                      child: Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: ListTile(
//                          leading: const FaIcon(
//                            FontAwesomeIcons.whatsapp,
//                            color: darkBlue,
//                            size: 40,
//                          ),
//                          title: Padding(
//                            padding: const EdgeInsets.only(left: 10.0),
//                            child: OnHoverText(builder: (isHovered) {
//                              final color = isHovered ? Colors.black : darkBlue;
//                              return Text(
//                                "Chat On Whatsapp",
//                                style: TextStyle(
//                                  color: color,
//                                  fontSize: 19,
//                                  fontFamily: "SFCMed",
//                                ),
//                              );
//                            }),
//                          ),
//                          onTap: () async {
//                            const url = 'https://wa.me/+919673581742';
//
//                            // ignore: deprecated_member_use
//                            if (await canLaunch(url)) {
//                              // ignore: deprecated_member_use
//                              await launch(url, forceSafariVC: false);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                        ),
//                      ),
//                    ),
//                  ),
//
//                  // instagram
//                  Padding(
//                    padding: const EdgeInsets.all(8.0),
//                    child: Card(
//                      shadowColor: darkBlue,
//                      elevation: 5.0,
//                      child: Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: ListTile(
//                          leading: const FaIcon(
//                            FontAwesomeIcons.instagram,
//                            color: darkBlue,
//                            size: 40,
//                          ),
//                          title: Padding(
//                            padding: const EdgeInsets.only(left: 10.0),
//                            child: OnHoverText(builder: (isHovered) {
//                              final color = isHovered ? Colors.black : darkBlue;
//                              return Text(
//                                "Follow Us on Instagram",
//                                style: TextStyle(
//                                  color: color,
//                                  fontSize: 19,
//                                  fontFamily: "SFCMed",
//                                ),
//                              );
//                            }),
//                          ),
//                          onTap: () async {
//                            const url =
//                                'https://www.instagram.com/codeframe15/';
//
//                            // ignore: deprecated_member_use
//                            if (await canLaunch(url)) {
//                              // ignore: deprecated_member_use
//                              await launch(url, forceSafariVC: false);
//                            } else {
//                              throw 'Could not launch $url';
//                            }
//                          },
//                        ),
//                      ),
//                    ),
//                  ),
//
//                  Container(
//                    height: 50,
//                  ),
//
//                  //Our Services
//                  SlideInUp(
//                    child: Container(
//                      color: lightBlue.withOpacity(0.2),
//                      child: Column(
//                        children: [
//                          //Space on Top
//                          Container(
//                            height: 50,
//                          ),
//
//                          //Our Services ----------------------------------------------
//                          SlideInUp(
//                            child: Container(
//                              child: Text(
//                                "Our Services",
//                                style: TextStyle(
//                                  fontSize: 25,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//
//                          //Container Space
//                          Container(
//                            height: 40,
//                          ),
//
//                          // android development
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Android Development",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 22,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Build Custom Android App With Play Store Support And Publish App On Play Store.",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 18,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Container(
//                            height: 20,
//                          ),
//
//                          //Ios development
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "IOS Development",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 22,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Build Apple Iphone Apps And Publish Apps On App Store.",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 18,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Container(
//                            height: 20,
//                          ),
//
//                          //web development
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Web Development",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 22,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Build Custom Website That Supports  Mobile And Desktop Browser with Custom Layout.",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 18,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Container(
//                            height: 20,
//                          ),
//
//                          //windows development
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Windows Development",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 22,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Build Apps For Windows Operating System.",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 18,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Container(
//                            height: 20,
//                          ),
//
//                          //Mac development
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Mac OS Development",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 22,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Build Apps For Apple Mac OS And Publishing App On Mac App Store.",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 18,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Container(
//                            height: 20,
//                          ),
//
//                          // IT support
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "IT Support",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 22,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Padding(
//                            padding: const EdgeInsets.only(
//                                left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//                            child: Container(
//                              child: Text(
//                                "Setup Office Hardware And Software. "
//                                    "Get Help With IT Related Queries.",
//                                textAlign: TextAlign.center,
//                                style: TextStyle(
//                                  fontSize: 18,
//                                  color: Colors.black,
//                                  fontFamily: "SFCMed",
//                                ),
//                              ),
//                            ),
//                          ),
//                          Container(
//                            height: 40,
//                          ),
//                        ],
//                      ),
//                    ),
//                  ),
//
//                  // Terms and policy bar down
//                  Container(
//                    height: 60,
//                    decoration: const BoxDecoration(
//                      gradient: LinearGradient(
//                        colors: [darkBlue, lightBlue],
//                        begin: FractionalOffset(0.0, 0.0),
//                        end: FractionalOffset(1.0, 0.0),
//                        stops: [0.0, 1.0],
//                        tileMode: TileMode.clamp,
//                      ),
//                    ),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                        Text(" CodeFrame  |"),
//                        Text(
//                          "  ©",
//                          style: TextStyle(fontSize: 17),
//                        ),
//                        Text(" Copyrights  |"),
//                        Text("  Terms  |"),
//                        Text("  Policy  |"),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
