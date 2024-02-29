import 'package:flutter/material.dart';

class RowBuilder extends StatelessWidget {
  final IndexedWidgetBuilder itemBuilder;
  final MainAxisAlignment mainAxisAlignment;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;
  final TextDirection? textDirection;
  final VerticalDirection verticalDirection;
  final int itemCount;
  final bool reversed;

  const RowBuilder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    required this.reversed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: reversed == false
          ? List.generate(
              itemCount,
              (index) => itemBuilder(context, index),
            ).toList()
          : List.generate(
              itemCount,
              (index) => itemBuilder(context, index),
            ).reversed.toList(),
    );
  }
}
