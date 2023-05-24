import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:netflix_app/core/component/botton/play_button.dart';
import 'package:netflix_app/core/component/column/column_icon_text.dart';
import 'package:netflix_app/core/component/container/app_bar_container.dart';
import 'package:netflix_app/core/component/container/image_container.dart';
import 'package:netflix_app/core/component/container/linear_gradient_container.dart';
import 'package:netflix_app/core/component/container/series_container.dart';
import 'package:netflix_app/core/component/padding/padding_headline6_text.dart';
import 'package:netflix_app/core/component/text/caption_text_copy.dart';
import 'package:netflix_app/core/component/text/subtitle_one_text_copy.dart';
import 'package:netflix_app/core/constants/app/home_page_constants.dart';
import 'package:netflix_app/core/constants/image/image_constants.dart';
import 'package:netflix_app/core/extension/context_extension/context_extension.dart';

class HomePageView extends StatelessWidget {
  HomePageConstants get _constants => HomePageConstants.init();
  ImageConstants get _imageConstants => ImageConstants.init();
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: context.paddingLow,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              //start of all screen
              SizedBox(
                width: MediaQuery.of(context).size.width - 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //top stack
                    Stack(
                      children: [
                        //backgroundImage
                        ImageContainer(
                          path: _imageConstants.banner,
                          height: 0.65,
                          fit: BoxFit.cover,
                        ),
                        //gradient background picture
                        LinearGradientContainer(
                          height: context.dynamicHeight(0.65),
                          colors: [
                            context.blackOpacityColor(0.85),
                            context.blackOpacityColor(0),
                          ],
                        ),
                        //series image and text
                        SizedBox(
                          height: context.dynamicHeight(0.65),
                          child: Column(
                            children: [
                              Padding(
                                padding: context.horizontalPaddingMedium,
                                child: ImageContainer(
                                  height: context.dynamicHeight(0.00025),
                                  path: _imageConstants.title,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              CaptionTextCopy(
                                text: _constants.sciFi,
                              ),
                            ],
                          ),
                        )
                      ],
                      //end of top stack
                    ),
                    //mid icon
                    Padding(
                      padding: context.verticalPaddingNormal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ColumnIconText(
                            icon: const Icon(Icons.add),
                            text: _constants.myList,
                          ),
                          PlayButtonView(
                            color: context.whiteColor,
                            iconColor: context.blackColor,
                            iconSize: 40,
                            radius: context.lowBorderRadius,
                            sizedBox: context.emptySizedWidthBoxLow,
                          ),
                          ColumnIconText(
                            icon: const Icon(Icons.info_outline),
                            text: _constants.info,
                          ),
                        ],
                      ),
                    ),
                    //series list
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PaddingHeadline6Text(
                          data: _constants.myList,
                        ),
                        SeriesContainer(
                          height: context.dynamicHeight(0.22),
                          count: _imageConstants.myList.length,
                          path: _imageConstants.myList,
                        ),
                        context.emptySizedHeightBoxLow,
                        PaddingHeadline6Text(
                          data: _constants.popular,
                        ),
                        SeriesContainer(
                          height: context.dynamicHeight(0.22),
                          count: _imageConstants.popularList.length,
                          path: _imageConstants.popularList,
                        ),
                        context.emptySizedHeightBoxLow,
                        PaddingHeadline6Text(
                          data: _constants.trending,
                        ),
                        SeriesContainer(
                          height: context.dynamicHeight(0.22),
                          count: _imageConstants.trendingList.length,
                          path: _imageConstants.trendingList,
                        ),
                        context.emptySizedHeightBoxLow,
                        PaddingHeadline6Text(
                          data: _constants.originals,
                        ),
                        SeriesContainer(
                          height: context.dynamicHeight(0.3),
                          count: _imageConstants.originalList.length,
                          path: _imageConstants.originalList,
                        ),
                        context.emptySizedHeightBoxLow,
                        PaddingHeadline6Text(
                          data: _constants.forYou,
                        ),
                        SeriesContainer(
                          height: context.dynamicHeight(0.22),
                          count: _imageConstants.forYouList.length,
                          path: _imageConstants.forYouList,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //second stack phase
              Column(
                children: [
                  context.emptySizedHeightBoxLow,
                  Padding(
                    padding: context.verticalPaddingNormal,
                    child: AppBarContainer(
                      child: Image.asset(
                        _imageConstants.logo,
                        width: context.dynamicWidth(0.07),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.05),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SubtitleOneTextCopy(
                            text: _constants.tvShows,
                          ),
                          SubtitleOneTextCopy(
                            text: _constants.movies,
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 3,
                            children: [
                              SubtitleOneTextCopy(
                                text: _constants.categories,
                              ),
                              const Icon(Icons.keyboard_arrow_down),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
