// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../container/image_container.dart';

class ListViewBuilderSeries extends StatelessWidget {
  final int count;
  final List<String> path;
  const ListViewBuilderSeries({
    Key? key,
    required this.count,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        return Padding(
          padding: context.paddingLow,
          child: ImageContainer(
            path: path[index],
            width: context.dynamicWidth(0.27),
            borderRadius: BorderRadius.circular(6),
          ),
        );
      },
    );
  }
}
