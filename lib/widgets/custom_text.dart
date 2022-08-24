import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final int? size;
  final bool bold;
  final bool centre;
  const CustomText({
    Key? key,
    required this.text,
    this.color,
    this.size,
    this.bold = false,
    this.centre = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: centre ? TextAlign.center : TextAlign.start,
      style: TextStyle(
        fontFamily: 'Poppins',
        fontSize: size?.sp,
        color: color,
        fontWeight: bold ? FontWeight.w700 : FontWeight.normal,
      ),
    );
  }
}
