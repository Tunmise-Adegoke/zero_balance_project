import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HorizontalBox extends StatelessWidget {
  final int? size;
  const HorizontalBox({
    Key? key,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size?.w,
    );
  }
}
