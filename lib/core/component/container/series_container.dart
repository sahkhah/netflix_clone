import 'package:flutter/material.dart';

import '../listview_builder/series_list.dart';

class SeriesContainer extends StatelessWidget {
  final double height;
  final int count;
  final List<String> path;

  const SeriesContainer({
    Key? key,
    required this.height,
    required this.count,
    required this.path,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListViewBuilderSeries(
        count: count,
        path: path,
      ),
    );
  }
}
