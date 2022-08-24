import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zero_balance_project/utils/colors.dart';
import 'package:zero_balance_project/widgets/vertical_box.dart';

import '../../widgets/custom_text.dart';
import '../Home2/home_2.dart';

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.55.w,
      height: 73.11.h,
      // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.secondaryBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.w, top: 4.h),
            child: const CustomText(
              text: 'Total Spends',
              color: AppColors.primaryWhite,
              size: 18,
            ),
          ),
          const VerticalBox(size: 1),
          Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: const CustomText(
              text: '₹0',
              color: AppColors.primaryWhite,
              size: 32,
            ),
          ),
          const VerticalBox(size: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CustomText(
                text: '₹18,000',
                color: AppColors.dashLines,
                size: 12,
              ),
              CustomText(
                text: '- - - - - - - - - - - - - - - - ',
                color: AppColors.dashLines,
                size: 12,
              ),
              CustomText(
                text: 'budget',
                color: AppColors.dashLines,
                size: 12,
              ),
            ],
          ),
          const VerticalBox(size: 10),
          const Divider(
            endIndent: 340,
            color: AppColors.primaryWhite,
            thickness: 3,
            height: 2,
          ),
          const VerticalBox(size: 3),
          const Center(
            child: CustomText(
              text: 'Jan month\'s data',
              size: 12,
              centre: true,
              color: AppColors.dashLines,
            ),
          ),
          const VerticalBox(size: 3),
          Center(
            child: Container(
              width: 81.w,
              height: 25.h,
              decoration: BoxDecoration(
                color: AppColors.primaryWhite,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Stack(
                children: [
                  const Positioned(
                    top: 20,
                    left: 20,
                    child: CustomText(
                      text: 'Pending KYC',
                      size: 18,
                      color: AppColors.primaryBlack,
                    ),
                  ),
                  const Positioned(
                    top: 60,
                    left: 20,
                    child: SizedBox(
                      height: 90,
                      width: 218,
                      child: CustomText(
                        text: 'Lorem Ipsum is simply dummy text'
                            ' of the printing and typesetting'
                            ' industry. Lorem ',
                        color: AppColors.primaryBlack,
                        size: 10,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 135,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home2(),
                          ),
                        );
                      },
                      child: Container(
                        height: 6.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(84),
                          color: AppColors.buttonColor,
                        ),
                        child: const Center(
                          child: CustomText(
                            text: 'Complete Now',
                            color: AppColors.primaryWhite,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 225,
                    child: Image.asset('assets/images/Ellipse 972.png'),
                  ),
                  Positioned(
                    top: 25,
                    left: 270,
                    child: Image.asset('assets/images/🔑.png'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
