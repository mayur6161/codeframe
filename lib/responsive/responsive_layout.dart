import 'package:flutter/material.dart';
import 'dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  ResponsiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}


class ResponsiveLayoutContact extends StatelessWidget {
  final Widget mobileContact;
  final Widget desktopContact;

  ResponsiveLayoutContact({required this.mobileContact, required this.desktopContact});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileContactWidth) {
          return mobileContact;
        } else {
          return desktopContact;
        }
      },
    );
  }
}
