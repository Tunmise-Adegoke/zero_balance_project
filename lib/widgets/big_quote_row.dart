

import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_text.dart';
import 'horizontal_box.dart';

class BigQuoteRow extends StatelessWidget {
  const BigQuoteRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const VerticalDivider(
            color: AppColors.primaryBlack,
            width: 5,
            thickness: 7,
          ),
          HorizontalBox(size: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomText(
                text: 'A budget doesn\'t',
                size: 30,
                bold: true,
                color: AppColors.unselectedIcon,
              ),
              CustomText(
                text: 'limit your freedom;',
                size: 30,
                bold: true,
                color: AppColors.unselectedIcon,
              ),
              CustomText(
                text: 'it gives you',
                size: 30,
                bold: true,
                color: AppColors.unselectedIcon,
              ),
              CustomText(
                text: 'freedom',
                size: 30,
                bold: true,
                color: AppColors.unselectedIcon,
              ),
            ],
          ),
        ],
      ),
    );
  }
}