import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:netflix_app/core/component/container/app_bar_container.dart';
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
          Container(
            height: context.dynamicHeight(0.07),
            color: context.greyOpacityColor(0.2),
            child: Padding(
              padding: context.horizontalPaddingNormal,
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
              ))
        ],
      ),
    );
  }
}
