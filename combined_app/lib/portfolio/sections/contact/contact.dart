import 'package:combined_app/portfolio/responsive/responsive.dart';
import 'package:combined_app/portfolio/sections/contact/contact_desktop.dart';
import 'package:combined_app/portfolio/sections/contact/contact_mobile.dart';
import 'package:flutter/material.dart';
// import 'package:folio/responsive/responsive.dart';
// import 'package:folio/sections/contact/contact_desktop.dart';
// import 'package:folio/sections/contact/contact_mobile.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobileTab(),
      tablet: ContactMobileTab(),
      desktop: ContactDesktop(),
    );
  }
}
