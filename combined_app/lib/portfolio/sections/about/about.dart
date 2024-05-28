import 'package:combined_app/portfolio/responsive/responsive.dart';
import 'package:combined_app/portfolio/sections/about/about_desktop.dart';
import 'package:combined_app/portfolio/sections/about/about_mobile.dart';
import 'package:combined_app/portfolio/sections/about/about_tablet.dart';
import 'package:flutter/material.dart';
// import 'package:folio/responsive/responsive.dart';
// import 'package:folio/sections/about/about_desktop.dart';
// import 'package:folio/sections/about/about_mobile.dart';
// import 'package:folio/sections/about/about_tablet.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: AboutTab(),
      mobile: AboutMobile(),
      desktop: AboutDesktop(),
    );
  }
}
