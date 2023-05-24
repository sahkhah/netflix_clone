// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PlayButtonView extends StatelessWidget {
  final Color color;
  final Color iconColor;
  final double iconSize;
  final BorderRadius radius;
  final Widget sizedBox;

  const PlayButtonView({
    Key? key,
    required this.color,
    required this.iconColor,
    required this.iconSize,
    required this.radius,
    required this.sizedBox,
  }) : super(key: key);

  //HomePageConstants get _constants => HomePageConstants.init();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10,),
      decoration: BoxDecoration(
        color: color,
        borderRadius: radius,
      ),
      child: Wrap(
        spacing: 4,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(
            Icons.play_arrow,
            size: iconSize,
            color: iconColor,
          ),
          Text(
            'play',
            //_constants.play,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
      ),
    );
  }
}
