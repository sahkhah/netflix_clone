import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:netflix_app/core/component/container/image_container.dart';
import 'package:netflix_app/core/component/text/headline6_text.dart';
import 'package:netflix_app/core/component/text/subtitle_one_text_copy.dart';
import 'package:netflix_app/core/constants/app/search_page_constants.dart';
import 'package:netflix_app/core/constants/image/image_constants.dart';
import 'package:netflix_app/core/extension/context_extension/context_extension.dart';

class SearchPageView extends StatelessWidget {
  SearchPageConstants get _constants => SearchPageConstants.init();
  ImageConstants get _imageConstants => ImageConstants.init();
  const SearchPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          height: context.dynamicHeight(0.05),
          decoration: BoxDecoration(
            color: context.greyOpacityColor(0.25),
            borderRadius: context.lowBorderRadius,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: _constants.search,
              hintStyle: TextStyle(
                color: context.greyOpacityColor(0.5),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: context.greyOpacityColor(0.5),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: context.horizontalPaddingLow,
            child: const Icon(
              Icons.mic_none,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: context.paddingNormal,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Headline6TextCopy(
                text: _constants.topSearches,
              ),
              Column(
                children: List.generate(
                  _imageConstants.images.length,
                  (index) => Padding(
                    padding: context.verticalPaddingLow,
                    child: Row(
                      children: [
                        SizedBox(
                          width: context.dynamicWidth(0.73),
                          height: context.dynamicHeight(0.1),
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  ImageContainer(
                                    path: _imageConstants.images[index],
                                    height: 0.3,
                                    width: context.dynamicWidth(0.3),
                                    fit: BoxFit.cover,
                                    borderRadius: context.lowBorderRadius,
                                  ),
                                  Container(
                                    width: context.dynamicWidth(0.3),
                                    height: context.dynamicHeight(0.1),
                                    color: context.blackOpacityColor(0.2),
                                  ),
                                ],
                              ),
                              context.emptySizedWidthBoxLow,
                              Container(
                                width: context.dynamicWidth(0.30),
                                height: context.dynamicHeight(0.1),
                                alignment: Alignment.centerLeft,
                                child: SubtitleOneTextCopy(
                                  text: _constants.titleList[index],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: context.dynamicWidth(0.19),
                          height: context.dynamicHeight(0.1),
                          child: Icon(
                            Icons.play_circle_outline_outlined,
                            size: context.dynamicWidth(0.1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
