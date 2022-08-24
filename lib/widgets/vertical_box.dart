import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class VerticalBox extends StatelessWidget {
  final int size;
  const VerticalBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.h,
    );
  }
}
