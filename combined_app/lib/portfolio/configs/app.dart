import 'package:combined_app/portfolio/configs/app_dimensions.dart';
import 'package:combined_app/portfolio/configs/app_theme.dart';
import 'package:combined_app/portfolio/configs/app_typography.dart';
import 'package:combined_app/portfolio/configs/space.dart';
import 'package:combined_app/portfolio/configs/ui.dart';
import 'package:combined_app/portfolio/configs/ui_props.dart';
import 'package:flutter/material.dart';
//import 'package:folio/configs/configs.dart';

class App {
  static bool? isLtr;
  static bool showAds = false;

  static init(BuildContext context) {
    UI.init(context);
    AppDimensions.init();
    AppTheme.init(context);
    UIProps.init();
    Space.init();
    AppText.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
