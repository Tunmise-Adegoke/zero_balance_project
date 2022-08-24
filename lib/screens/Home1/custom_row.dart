

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zero_balance_project/utils/colors.dart';
import 'package:zero_balance_project/widgets/custom_text.dart';
import 'package:zero_balance_project/widgets/horizontal_box.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 20.h,
            width: 45.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.5, color: AppColors.greyText)),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Image.asset(
                    'assets/images/Ellipse 975.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Image.asset(
                    'assets/images/🔑 (1).png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 120,
                  child: Image.asset(
                    'assets/images/01.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 80,
                  left: 20,
                  child: CustomText(
                    text: 'Complete KYC',
                    size: 14,
                    color: AppColors.primaryBlack,
                  ),
                ),
                const Positioned(
                  top: 116,
                  left: 20,
                  child: SizedBox(
                    height: 90,
                    width: 160,
                    child: CustomText(
                      text: 'Create category and earn ₹25',
                      color: AppColors.primaryBlack,
                      size: 10,
                      centre: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const HorizontalBox(size: 3),
          Container(
            height: 20.h,
            width: 45.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(width: 0.5, color: AppColors.greyText)),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Image.asset(
                    'assets/images/Ellipse 975 (1).png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Image.asset(
                    'assets/images/🍔.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 120,
                  child: Image.asset(
                    'assets/images/02.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 80,
                  left: 20,
                  child: CustomText(
                    text: 'Create category',
                    size: 14,
                    color: AppColors.primaryBlack,
                  ),
                ),
                const Positioned(
                  top: 116,
                  left: 20,
                  child: SizedBox(
                    height: 90,
                    width: 160,
                    child: CustomText(
                      text: 'Create category and earn ₹25',
                      color: AppColors.primaryBlack,
                      size: 10,
                      centre: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}