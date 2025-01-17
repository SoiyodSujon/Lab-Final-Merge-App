import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:combined_app/portfolio/animations/entrance_fader.dart';
import 'package:combined_app/portfolio/configs/app_dimensions.dart';
import 'package:combined_app/portfolio/configs/app_theme.dart';
import 'package:combined_app/portfolio/configs/app_typography.dart';
import 'package:combined_app/portfolio/configs/space.dart';
import 'package:combined_app/portfolio/utils/utils.dart';
import 'package:combined_app/portfolio/widget/social_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:folio/animations/entrance_fader.dart';
// import 'package:folio/configs/configs.dart';

// import 'package:folio/utils/utils.dart';
// import 'package:folio/widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 1.025,
      padding: Space.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  StaticUtils.profilePhoto,
                  height: size.width < 1200
                      ? size.height * 0.8
                      : size.height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(80),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'WELCOME TO MY PORTFOLIO! ',
                      style: AppText.b1!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                Text(
                  "Hossain",
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: AppDimensions.normalize(25),
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  "Sujon",
                  style: AppText.h1b!.copyWith(
                    fontSize: AppDimensions.normalize(25),
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            ' Programmer',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' Gamer',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                          TyperAnimatedText(
                            ' A friend :)',
                            speed: const Duration(milliseconds: 50),
                            textStyle: AppText.b1,
                          ),
                        ],
                        isRepeatingAnimation: true,
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                Container(height: 100, width: 300, child: const SocialLinks())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
