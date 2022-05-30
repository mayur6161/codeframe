import 'package:CodeFrame/responsive/mobile_contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:CodeFrame/colours.dart';
import 'package:animate_do/animate_do.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/hover.dart';
import 'contact_page.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  final ScrollController _controller = ScrollController();

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
      body: SmoothScrollWeb(
        controller: _controller,
        child: ListView(
          controller: _controller,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // 3 mobile image
                  Container(
                    height: 600,
                    child: Stack(
                      children: <Widget>[
                        FadeInUp(
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/threeapppic.jpg',
                            ),
                          ),
                        ),

                        // text on the image in blue background
                        FadeInLeft(
                          child: Container(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // top space of the text
                                  Spacer(),

                                  // text container
                                  Container(
                                    color: darkBlue.withOpacity(0.5),
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 20.0,
                                          right: 12,
                                          bottom: 10.0,
                                          top: 5.0),
                                      child: Text(
                                        'Step Up',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0),
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

                                  FadeInLeft(
                                    child: Container(
                                      color: darkBlue.withOpacity(0.5),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.0,
                                            right: 12,
                                            bottom: 10.0,
                                            top: 5.0),
                                        child: Text(
                                          'Stop Holding Back',
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

                                  FadeInLeft(
                                    child: Container(
                                      color: darkBlue.withOpacity(0.5),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.0,
                                            right: 12,
                                            bottom: 10.0,
                                            top: 5.0),
                                        child: Text(
                                          'This Is The Time',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22.0),
                                        ),
                                      ),
                                    ),
                                  ),

                                  // below space of the text
                                  const Spacer(),
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),

                  // Services App development and web development

                  Container(
                    child: Column(
                      children: [
                        // Android app development
                        SlideInUp(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OnHoverButton(
                              child: Link(
                                uri: Uri.parse("/contactpage"),
                                builder: (context, followLink) =>
                                    GestureDetector(
                                  onTap: followLink,
                                  child: Card(
                                    shadowColor: darkBlue,
                                    elevation: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0, left: 10.0),
                                              child: Container(
                                                  height: 50,
                                                  width: 50,
                                                  child: Image.asset(
                                                      "assets/android_logo.png")),
                                            ),
                                          ),
                                          Text(
                                            "Android App Development",
                                            style: TextStyle(
                                                fontSize: 19,
                                                fontFamily: "SFCMed"),
                                          ),
                                        ],
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
                            child: OnHoverButton(
                              child: Link(
                                uri: Uri.parse("/contactpage"),
                                builder: (context, followLink) =>
                                    GestureDetector(
                                  onTap: followLink,
                                  child: Card(
                                    shadowColor: darkBlue,
                                    elevation: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0, left: 10.0),
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                child: Image.asset(
                                                    "assets/Apple_logo.png"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "IOS App Development",
                                            style: TextStyle(
                                                fontSize: 19,
                                                fontFamily: "SFCMed"),
                                          ),
                                        ],
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
                            child: OnHoverButton(
                              child: Link(
                                uri: Uri.parse("/contactpage"),
                                builder: (context, followLink) =>
                                    GestureDetector(
                                  onTap: followLink,
                                  child: Card(
                                    shadowColor: darkBlue,
                                    elevation: 5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15.0, left: 10.0),
                                              child: Container(
                                                height: 50,
                                                width: 50,
                                                child: Image.asset(
                                                    "assets/web_logo.png"),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Web App Development",
                                            style: TextStyle(
                                                fontSize: 19,
                                                fontFamily: "SFCMed"),
                                          ),
                                        ],
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

                  // Space between services and explore
                  Container(
                    height: 20,
                  ),

                  // Web Image
                  Image.asset(
                    "assets/website.jpg",
                  ),

                  // Space between services and explore
                  Container(
                    height: 20,
                  ),

                  // Explore CodeFrame
                  JelloIn(
                    child: Container(
                      color: lightBlue.withOpacity(0.2),
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
                            padding: const EdgeInsets.all(13.0),
                            child: Text(
                              "Building Software Is Expensive And Most Of The Idea Become an Idea only. Do Not Have To Worry Anymore. We Are Here To Make Software Development More Affordable And To Bring Your Ideas Into Reality. Take Your Business And Ideas To The Next Level.",
                              style:
                                  TextStyle(fontSize: 19, fontFamily: "SFCMed"),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 13.0,
                                  right: 13.0,
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
                              final color = isHovered ? Colors.black : darkBlue;
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
                          onTap: () async {
                            final Uri params = Uri(
                              scheme: 'mailto',
                              path: 'codeframe15@gmail.com',
                              query:
                                  'subject=CodeFrame User Mail&body=Hello Please Mention Your Name And Details About Your Project. If You Would Like To contacted Through Phone Call Or Whatsapp Please Mention Your Number.',
                            );

                            var url = params.toString();
                            // ignore: deprecated_member_use
                            if (await canLaunch(url)) {
                              // ignore: deprecated_member_use
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          },
                        ),
                      ),
                    ),
                  ),

                  // Whatsapp
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                              final color = isHovered ? Colors.black : darkBlue;
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
                            const url = 'https://wa.me/+918605824874';

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

                  // instagram
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                              final color = isHovered ? Colors.black : darkBlue;
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
