import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zero_balance_project/screens/Home1/home_1.dart';
import 'package:zero_balance_project/screens/Home2/expense_card_2.dart';
import 'package:zero_balance_project/widgets/category_list.dart';
import 'package:zero_balance_project/screens/Home1/custom_row.dart';
import 'package:zero_balance_project/widgets/custom_text.dart';

import '../../utils/colors.dart';
import '../../widgets/big_quote_row.dart';
import '../../widgets/blog_row.dart';
import '../../widgets/reward_row.dart';
import '../Home1/expense_card.dart';
import '../../widgets/nav_bar.dart';
import '../../widgets/vertical_box.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 7.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WelcomeCard(),
              const VerticalBox(size: 1),
              const Divider(color: AppColors.greyText),
              const VerticalBox(size: 4),
              const CustomText(
                text: ' You are doing ',
                color: AppColors.greyText,
                size: 20,
              ),
              const CustomText(
                text: 'great keep it up 🫰',
                color: AppColors.greyText,
                size: 20,
              ),
              const VerticalBox(size: 4),
              ExpenseCard2(),
              const VerticalBox(size: 2),
              const NavBar(),
              VerticalBox(size: 2),
              CustomText(
                text: 'Categories',
                color: AppColors.greyText,
                size: 20,
              ),
              CatergoryList(),
              CustomText(
                text: 'Task',
                color: AppColors.greyText,
                size: 20,
              ),
              CustomRow(),
              VerticalBox(size: 2),
              CustomText(
                text: 'Offer and Rewards',
                color: AppColors.greyText,
                size: 20,
              ),
              RewardRow(),
              VerticalBox(size: 2),
              CustomText(
                text: 'Blog',
                color: AppColors.greyText,
                size: 20,
              ),
              BlogRow(),
              VerticalBox(size: 5),
              BigQuoteRow(),
            ],
          ),
        ),
      ),
    );
  }
}
