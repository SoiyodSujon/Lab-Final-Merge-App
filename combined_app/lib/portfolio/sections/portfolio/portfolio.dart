import 'package:combined_app/portfolio/responsive/responsive.dart';
import 'package:combined_app/portfolio/sections/portfolio/portfolio_desktop.dart';
import 'package:combined_app/portfolio/sections/portfolio/portfolio_mobile.dart';
import 'package:flutter/material.dart';
// import 'package:folio/responsive/responsive.dart';
// import 'package:folio/sections/portfolio/portfolio_desktop.dart';
// import 'package:folio/sections/portfolio/portfolio_mobile.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PortfolioMobileTab(),
      tablet: PortfolioMobileTab(),
      desktop: PortfolioDesktop(),
    );
  }
}
