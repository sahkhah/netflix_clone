import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:netflix_app/core/component/align/center_left_text.dart';
import 'package:netflix_app/core/component/column/column_icon_text.dart';
import 'package:netflix_app/core/component/container/app_bar_container.dart';
import 'package:netflix_app/core/component/container/image_container.dart';
import 'package:netflix_app/core/component/text/caption_text_copy.dart';
import 'package:netflix_app/core/component/text/headline6_text.dart';
import 'package:netflix_app/core/component/text/subtitle_one_text_copy.dart';
import 'package:netflix_app/core/component/text/white_opacity_text.dart';
import 'package:netflix_app/core/constants/app/coming_soon_page_constants.dart';
import 'package:netflix_app/core/constants/image/image_constants.dart';
import 'package:netflix_app/core/extension/context_extension/context_extension.dart';

class ComingSoonPageView extends StatelessWidget {
  ComingSoonPageConstants get _constants => ComingSoonPageConstants.init();
  ImageConstants get _imageConstants => ImageConstants.init();
  const ComingSoonPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _constants.title,
        ),
        actions: const [
          AppBarContainer(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: context.paddingNormal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    spacing: 15,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(
                        Icons.notifications_none,
                      ),
                      SubtitleOneTextCopy(
                        text: _constants.notifications,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: context.dynamicWidth(0.045),
                  ),
                ],
              ),
            ),
            Column(
              children: List.generate(
                _imageConstants.bannerList.length,
                (index) => Padding(
                  padding: context.verticalPaddingNormal,
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.dynamicHeight(0.3),
                        child: Stack(
                          children: [
                            ImageContainer(
                              path: _imageConstants.bannerList[index],
                              height: 0.3,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: context.blackOpacityColor(0.2),
                              ),
                            ),
                          ],
                        ),
                      ),
                      context.emptySizedWidthBoxLow3x,
                      _constants.duration[index]  //amounts to true or false
                          ? Column(
                              children: [
                                Stack(
                                  //loading bar
                                  children: [
                                    Container(
                                      height: 2.5,
                                      color: context.greyOpacityColor(0.7),
                                    ),
                                    //progress bar
                                    Container(
                                      height: 2.5,
                                      width: context.dynamicWidth(0.34),
                                      color: context.redOpacityColor(0.7),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : Container(),
                      Padding(
                        padding: context.horizontalPaddingNormal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              _imageConstants.titleList[index],
                              width: context.dynamicWidth(0.35),
                            ),
                            Wrap(
                              spacing: 50,
                              children: [
                                ColumnIconText(
                                  icon: const Icon(
                                    Icons.notifications_outlined,
                                  ),
                                  text: _constants.remindMe,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      context.emptySizedHeightBoxLow3x,
                      CenterLeftText(
                        child: WhiteOpacityText(
                          text: _constants.date[index],
                        ),
                      ),
                      context.emptySizedHeightBoxLow,
                      CenterLeftText(
                        child: Headline6TextCopy(
                          text: _constants.titleList[index],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CenterLeftText(
                        child: WhiteOpacityText(
                          text: _constants.description[index],
                        ),
                      ),
                      context.emptySizedHeightBoxLow,
                      CenterLeftText(
                        child: CaptionTextCopy(
                          text: _constants.category[index],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
