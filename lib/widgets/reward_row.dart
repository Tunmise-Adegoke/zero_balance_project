import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zero_balance_project/utils/colors.dart';
import 'package:zero_balance_project/widgets/custom_text.dart';
import 'package:zero_balance_project/widgets/horizontal_box.dart';

import 'vertical_box.dart';

class RewardRow extends StatelessWidget {
  const RewardRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RewardCard(),
          HorizontalBox(
            size: 7,
          ),
          RewardCard()
        ],
      ),
    );
  }
}

class RewardCard extends StatelessWidget {
  const RewardCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 80.w,
      decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 5,
                spreadRadius: 0,
                color: Color.fromARGB(255, 212, 212, 207)),
          ]),
      child: Column(
        children: [
          Container(
            height: 20.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: AppColors.greyText.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          VerticalBox(size: 5),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomText(
              text: 'A rewarding Celecbration',
              size: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomText(
              text: 'Win rewards from Citizen,peter england, and More',
              size: 14,
              color: AppColors.greyText,
            ),
          ),
          VerticalBox(size: 5),
          Container(
            height: 5.h,
            width: 70.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.primaryBlue, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomText(
                  text: 'Explore Rewards',
                  size: 14,
                  color: AppColors.primaryBlue,
                ),
                Icon(
                  Icons.add,
                  color: AppColors.primaryBlue,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
