// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../constants/image/image_constants.dart';

class AppBarContainer extends StatelessWidget {
  ImageConstants get _imageConstants => ImageConstants.init();
  final Widget? child;
  const AppBarContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingLow,
      child: SizedBox(
        height: context.dynamicWidth(0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            child ?? context.emptySizedHeightBoxLow,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cast,
                    size: context.dynamicWidth(0.07),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    _imageConstants.profilePhoto,
                    width: context.dynamicWidth(0.065),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
