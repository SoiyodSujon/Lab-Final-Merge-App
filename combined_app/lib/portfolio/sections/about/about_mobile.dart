import 'package:combined_app/portfolio/configs/app_dimensions.dart';
import 'package:combined_app/portfolio/configs/app_theme.dart';
import 'package:combined_app/portfolio/configs/app_typography.dart';
import 'package:combined_app/portfolio/configs/space.dart';
import 'package:combined_app/portfolio/constants.dart';
import 'package:combined_app/portfolio/utils/about_utils.dart';
import 'package:combined_app/portfolio/utils/utils.dart';
import 'package:combined_app/portfolio/widget/about_me_data.dart';
import 'package:combined_app/portfolio/widget/custom_text_heading.dart';
import 'package:combined_app/portfolio/widget/tech_widget.dart';
import 'package:flutter/foundation.dart';
// import 'package:folio/configs/configs.dart';
// import 'package:folio/utils/about_utils.dart';
// import 'package:folio/utils/utils.dart';
// import 'package:folio/utils/work_utils.dart';

// import 'package:folio/widget/custom_text_heading.dart';
import 'package:universal_html/html.dart' as html;

import 'package:flutter/material.dart';
// import 'package:folio/constants.dart';
// import 'package:folio/widget/about_me_data.dart';
// import 'package:folio/widget/community_button.dart';
// import 'package:folio/widget/tech_widget.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      padding: Space.h,
      child: Column(
        children: [
          const CustomSectionHeading(
            text: '\nAbout Me',
          ),
          const CustomSectionSubHeading(
            text: 'Get to know me :)',
          ),
          Space.y1!,
          Image.asset(
            StaticUtils.mobilePhoto,
            height: height * 0.27,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Who am I?",
              style: AppText.b2!.copyWith(
                color: AppTheme.c!.primary,
              ),
            ),
          ),
          Space.y1!,
          Text(
            AboutUtils.aboutMeHeadline,
            style: AppText.b2b!.copyWith(
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Text(
            AboutUtils.aboutMeDetail,
            style: AppText.l1!.copyWith(
              height: 2,
              letterSpacing: 1.1,
              fontFamily: 'Montserrat',
            ),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          Space.y!,
          Text(
            'Technologies I have worked with:',
            style: AppText.l1!.copyWith(
              color: AppTheme.c!.primary,
            ),
          ),
          Space.y!,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: kTools
                .map(
                  (e) => ToolTechWidget(techName: e),
                )
                .toList(),
          ),
          Space.y!,
          Divider(
            color: Colors.grey[800],
            thickness: AppDimensions.normalize(0.5),
          ),
          SizedBox(
            height: height * 0.02,
          ),
          const AboutMeData(
            data: "Name",
            information: "Hossains Sujon",
          ),
          const AboutMeData(
            data: "Email",
            information: "sujan15-14701@diu.edu.bd",
          ),
        ],
      ),
    );
  }
}
