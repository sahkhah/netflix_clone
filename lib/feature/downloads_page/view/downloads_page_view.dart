import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:netflix_app/core/component/container/app_bar_container.dart';
import 'package:netflix_app/core/component/text/headline6_text.dart';
import 'package:netflix_app/core/component/text/subtitle_one_text_copy.dart';
import 'package:netflix_app/core/constants/app/download_page_constants.dart';
import 'package:netflix_app/core/extension/context_extension/context_extension.dart';

class DownloadPage extends StatelessWidget {
  DownloadsPageConstants get _constants => DownloadsPageConstants.init();
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _constants.myDownloads,
        ),
        actions: const [
          AppBarContainer(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //top container
          Container(
            height: context.dynamicHeight(0.07),
            color: context.greyOpacityColor(0.2),
            child: Padding(
              padding: context.horizontalPaddingNormal,
              //top container row
              child: Row(
                children: [
                  const Icon(
                    Icons.info_outline,
                  ),
                  context.emptySizedWidthBoxLow,
                  SubtitleOneTextCopy(
                    text: _constants.smartDownloads,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  SubtitleOneTextCopy(
                    text: _constants.onText,
                    color: context.blueColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              context.emptySizedHeightBoxNormal,
              //circle container
              Container(
                height: context.dynamicHeight(0.2),
                width: context.dynamicWidth(0.4),
                decoration: BoxDecoration(
                  color: context.greyOpacityColor(0.2),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    Icons.file_download,
                    color: context.greyOpacityColor(0.3),
                    size: context.dynamicWidth(0.22),
                  ),
                ),
              ),
              context.emptySizedHeightBoxLow3x,
              Headline6TextCopy(
                text: _constants.neverBe,
              ),
              context.emptySizedHeightBoxLow3x,
              //mid content
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dynamicWidth(0.18),
                ),
                child: SubtitleOneTextCopy(
                  text: _constants.content,
                  height: 1.4,
                ),
              ),
              context.emptySizedHeightBoxLow3x,
              //bottom Container
              SizedBox(
                height: context.dynamicHeight(0.07),
                width: context.dynamicWidth(0.8),
                child: Center(
                  child: Headline6TextCopy(
                    text: _constants.seeWhat,
                    color: context.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
         const Spacer(),
        ],
      ),
    );
  }
}
