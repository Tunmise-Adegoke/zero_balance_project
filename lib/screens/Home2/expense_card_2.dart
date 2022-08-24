import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zero_balance_project/screens/transaction.dart';

import 'package:zero_balance_project/utils/colors.dart';
import 'package:zero_balance_project/widgets/horizontal_box.dart';
import 'package:zero_balance_project/widgets/vertical_box.dart';

import '../../widgets/custom_text.dart';

class ExpenseCard2 extends StatelessWidget {
  const ExpenseCard2({
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
              text: '₹12,000',
              color: AppColors.primaryWhite,
              size: 32,
            ),
          ),
          VerticalBox(size: 4),
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
          // Image.asset(''),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 12.h,
                      width: 45.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryWhite,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 17,
                                backgroundColor:
                                    Color.fromARGB(231, 240, 223, 187),
                                child: Image.asset(
                                  'assets/images/Vector.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const HorizontalBox(size: 1),
                              const CustomText(
                                text: 'Projected Saving',
                                size: 10,
                              ),
                            ],
                          ),
                          const CustomText(
                            text: '₹2,000',
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    VerticalBox(size: 1),
                    Container(
                      height: 12.h,
                      width: 45.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 6, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryWhite,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 17,
                                backgroundColor:
                                    Color.fromARGB(231, 249, 203, 224),
                                child: Image.asset(
                                  'assets/images/Vector (1).png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const HorizontalBox(size: 1),
                              const CustomText(
                                text: 'Highest spent',
                                size: 10,
                              ),
                            ],
                          ),
                          const CustomText(
                            text: '₹2,000',
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                HorizontalBox(
                  size: 2,
                ),
                Container(
                  height: 25.h,
                  width: 35.5.w,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.primaryWhite,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      VerticalBox(size: 1),
                      const CustomText(
                        text: 'Card balance',
                        size: 10,
                      ),
                      VerticalBox(size: 1),
                      Row(
                        children: [
                          const CustomText(
                            text: '₹1,500',
                            size: 18,
                            bold: true,
                          ),
                          VerticalBox(size: 1),
                          Container(
                            width: 13.w,
                            height: 3.h,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 242, 175, 197),
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: CustomText(
                                text: 'Low bal ',
                                color: Color(0xffE13B30),
                                size: 8,
                              ),
                            ),
                          )
                        ],
                      ),
                      VerticalBox(size: 2),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => TransactionScreen(),
                                ));
                          },
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: AppColors.secondaryBlue,
                            child: CustomText(
                              text: 'Add',
                              color: AppColors.primaryWhite,
                              size: 16,
                            ),
                          ),
                        ),
                      )
                    ],
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
