import 'package:combined_app/portfolio/configs/app_dimensions.dart';
import 'package:combined_app/portfolio/configs/app_theme.dart';
import 'package:combined_app/portfolio/configs/space.dart';
import 'package:combined_app/portfolio/constants.dart';
import 'package:combined_app/portfolio/provider/app_provider.dart';
import 'package:combined_app/portfolio/responsive/responsive.dart';
import 'package:combined_app/portfolio/utils/utils.dart';
import 'package:flutter/material.dart';
//import 'package:folio/configs/configs.dart';
//import 'package:folio/constants.dart';
//import 'package:folio/provider/app_provider.dart';
//import 'package:folio/responsive/responsive.dart';
//import 'package:folio/utils/utils.dart';
import 'package:provider/provider.dart';

// class SocialLinks extends StatelessWidget {
//   const SocialLinks({
//     Key? key,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final appProvider = Provider.of<AppProvider>(context);
//     return Wrap(
//       runSpacing: AppDimensions.normalize(10),
//       alignment: WrapAlignment.center,
//       children: StaticUtils.socialIconURL
//           .asMap()
//           .entries
//           .map(
//             (e) => Padding(
//               padding:
//                   Responsive.isMobile(context) ? Space.all(0.2, 0) : Space.h!,
//               child: IconButton(
//                 highlightColor: Colors.white54,
//                 splashRadius: AppDimensions.normalize(12),
//                 icon: Image.network(
//                   e.value,
//                   color: appProvider.isDark ? Colors.white : Colors.black,
//                 ),
//                 iconSize: Responsive.isMobile(context)
//                     ? AppDimensions.normalize(10)
//                     : AppDimensions.normalize(15),
//                 onPressed: () => openURL(
//                   StaticUtils.socialLinks[e.key],
//                 ),
//                 hoverColor: AppTheme.c!.primary!,
//               ),
//             ),
//           )
//           .toList(),
//     );
//   }
// }

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => Padding(
              padding:
                  Responsive.isMobile(context) ? Space.all(0.2, 0) : Space.h!,
              child: IconButton(
                highlightColor: Colors.white54,
                splashRadius: AppDimensions.normalize(12),
                icon: Image.network(
                  e.value,
                  color: appProvider.isDark ? Colors.white : Colors.black,
                ),
                iconSize: Responsive.isMobile(context)
                    ? AppDimensions.normalize(10)
                    : AppDimensions.normalize(15),
                onPressed: () => openURL(
                  StaticUtils.socialLinks[e.key],
                ),
                hoverColor: AppTheme.c!.primary!,
              ),
            ),
          )
          .toList(),
    );
  }
}
