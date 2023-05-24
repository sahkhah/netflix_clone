// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../text/subtitle_one_text_copy.dart';

class ColumnIconText extends StatelessWidget {
  final Icon icon;
  final String text;
  const ColumnIconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        SubtitleOneTextCopy(
          text: text,
        ),
      ],
    );
  }
}
