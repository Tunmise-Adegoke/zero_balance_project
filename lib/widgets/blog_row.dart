import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zero_balance_project/utils/colors.dart';
import 'package:zero_balance_project/widgets/custom_text.dart';
import 'package:zero_balance_project/widgets/horizontal_box.dart';

import 'vertical_box.dart';

class BlogRow extends StatelessWidget {
  const BlogRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          BlogCard(),
          HorizontalBox(
            size: 7,
          ),
          BlogCard()
        ],
      ),
    );
  }
}

class BlogCard extends StatelessWidget {
  const BlogCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 85.w,
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
      decoration: BoxDecoration(
          color: AppColors.primaryWhite,
          borderRadius: BorderRadius.circular(16),
          border:
              Border.all(color: AppColors.greyText.withOpacity(0.2), width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 20.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: AppColors.greyText.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          VerticalBox(size: 3),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              child: CustomText(
                text: '4 methods of calculating Network,'
                    'Which no one will tell you',
                size: 16,
              ),
            ),
          ),
          VerticalBox(size: 1),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomText(
              text: 'Read Time: 8 mins',
              size: 12,
              color: AppColors.secondaryBlue,
            ),
          ),
          VerticalBox(size: 1),
          Row(
            children: const [
              CircleAvatar(
                backgroundColor: AppColors.unselectedIcon,
                child: Icon(
                  Icons.account_box_outlined,
                  color: AppColors.primaryBlue,
                ),
              ),
              HorizontalBox(size: 3),
              CustomText(
                text: 'Ann Korkowski',
                size: 12,
                color: AppColors.greyText,
              ),
              HorizontalBox(size: 10),
              CustomText(
                text: '08/09/2022',
                size: 12,
                color: AppColors.greyText,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
