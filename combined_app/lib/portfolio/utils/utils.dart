import 'package:combined_app/portfolio/sections/about/about.dart';
import 'package:combined_app/portfolio/sections/contact/contact.dart';
import 'package:combined_app/portfolio/sections/home/home.dart';
import 'package:combined_app/portfolio/sections/portfolio/portfolio.dart';
import 'package:combined_app/portfolio/sections/services/services.dart';
import 'package:combined_app/portfolio/widget/footer.dart';
import 'package:flutter/material.dart';
// import 'package:folio/sections/about/about.dart';
// import 'package:folio/sections/contact/contact.dart';
// import 'package:folio/sections/home/home.dart';
// import 'package:folio/sections/portfolio/portfolio.dart';
// import 'package:folio/sections/services/services.dart';
// import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/sujon.PNG';
  static const String coloredPhoto = 'assets/photos/sujon.PNG';
  static const String blackWhitePhoto = 'assets/photos/sujon.PNG';
  static const String profilePhoto = 'assets/photos/sujon.PNG';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String blog = 'assets/services/blog.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/md.mdsujon.5682",
    "https://www.instagram.com/soiyodsujon",
  ];

  static const String resume = 'https://github.com/SoiyodSujon/My-file';

  static const String gitHub = 'https://github.com/SoiyodSujon';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
