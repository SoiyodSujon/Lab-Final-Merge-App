import 'package:combined_app/portfolio/configs/space.dart';
import 'package:combined_app/portfolio/constants.dart';
import 'package:flutter/material.dart';
//import 'package:folio/configs/configs.dart';
//import 'package:folio/constants.dart';

class CommunityIconBtn extends StatelessWidget {
  final String icon;
  final String link;
  final double height;

  const CommunityIconBtn({
    Key? key,
    required this.icon,
    required this.link,
    required this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.h!,
      child: InkWell(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Image.asset(
          icon,
          height: height,
        ),
        onTap: () => openURL(link),
      ),
    );
  }
}
