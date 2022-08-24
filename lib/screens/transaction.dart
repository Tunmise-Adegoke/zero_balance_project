import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zero_balance_project/utils/colors.dart';
import 'package:zero_balance_project/widgets/custom_text.dart';
import 'package:zero_balance_project/widgets/vertical_box.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryWhite,
        leading: BackButton(
          color: AppColors.primaryBlack,
        ),
        elevation: 0.5,
        title: CustomText(
          text: 'Adding Transaction',
          size: 16,
          color: AppColors.primaryBlack,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Enter Spend amount',
              size: 16,
            ),
            VerticalBox(size: 2),
            CustomText(
              text: 'Enter the amount that you have spend without'
                  'using zero balance. ',
              size: 14,
              color: AppColors.greyText,
            ),
            VerticalBox(size: 3),
            TextField(
              decoration: InputDecoration(
                  label: CustomText(
                    text: 'Amount',
                    size: 16,
                    color: AppColors.secondaryBlue,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.secondaryBlue),
                      borderRadius: BorderRadius.circular(16))),
            ),
            VerticalBox(size: 3),
            CustomText(
              text: 'Enter Date',
              size: 16,
              color: AppColors.primaryBlack,
            ),
            VerticalBox(size: 1),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.secondaryBlue),
                      borderRadius: BorderRadius.circular(16))),
            ),
            VerticalBox(size: 2),
            CustomText(
              text: 'Mode of Payment',
              size: 16,
              color: AppColors.primaryBlack,
            ),
            VerticalBox(size: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 6.h,
                  width: 23.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.secondaryBlue)),
                  child: Center(
                    child: CustomText(
                      text: 'UPI',
                      size: 16,
                      color: AppColors.secondaryBlue,
                    ),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 23.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.secondaryBlue)),
                  child: Center(
                    child: CustomText(
                      text: 'Card',
                      size: 16,
                      color: AppColors.secondaryBlue,
                    ),
                  ),
                ),
                Container(
                  height: 6.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.secondaryBlue)),
                  child: Center(
                    child: CustomText(
                      text: 'Cash',
                      size: 16,
                      color: AppColors.secondaryBlue,
                    ),
                  ),
                ),
              ],
            ),
            VerticalBox(size: 3),
            CustomText(
              text: 'Quick note',
              size: 16,
              color: AppColors.primaryBlack,
            ),
            VerticalBox(size: 1),
            TextField(
              decoration: InputDecoration(
                  label: CustomText(
                    text: 'Quick note',
                    color: AppColors.unselectedIcon,
                    size: 14,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.unselectedIcon),
                      borderRadius: BorderRadius.circular(16))),
            ),
            VerticalBox(size: 4),
            Container(
              height: 8.5.h,
              width: 300.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.secondaryBlue),
              child: Center(
                child: CustomText(
                  text: 'Send',
                  size: 16,
                  color: AppColors.primaryWhite,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
