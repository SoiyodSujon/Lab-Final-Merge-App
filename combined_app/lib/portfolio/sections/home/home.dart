import 'package:combined_app/portfolio/responsive/responsive.dart';
import 'package:combined_app/portfolio/sections/home/home_desktop.dart';
import 'package:combined_app/portfolio/sections/home/home_mobile.dart';
import 'package:combined_app/portfolio/sections/home/home_tab.dart';
import 'package:flutter/material.dart';
// import 'package:folio/responsive/responsive.dart';
// import 'package:folio/sections/home/home_desktop.dart';
// import 'package:folio/sections/home/home_mobile.dart';
// import 'package:folio/sections/home/home_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      desktop: HomeDesktop(),
    );
  }
}
