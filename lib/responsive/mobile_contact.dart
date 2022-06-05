import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colours.dart';
import '../widgets/hover.dart';

class MyMobileContact extends StatelessWidget {
  const MyMobileContact({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Container(
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

            Container(
              height: 50,
            ),

          ],
        ),
      ),
    );
  }
}
