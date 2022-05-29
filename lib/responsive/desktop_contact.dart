import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colours.dart';
import '../widgets/hover.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          // Space up
          Container(
            height: 35,
          ),
          //contact us text
          Container(
            child: Text(
              "Contact Us",
              style: TextStyle(
                  fontSize: 25, fontFamily: "SFCMed", color: Colors.black),
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
                      const url = 'https://www.instagram.com/codeframe15/';

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
        ],
      ),
    );
  }
}
