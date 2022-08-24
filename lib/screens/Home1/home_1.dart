import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zero_balance_project/utils/colors.dart';
import 'package:zero_balance_project/widgets/blog_row.dart';
import 'package:zero_balance_project/widgets/category_list.dart';
import 'package:zero_balance_project/widgets/horizontal_box.dart';
import 'package:zero_balance_project/widgets/nav_bar.dart';

import '../../widgets/big_quote_row.dart';
import 'custom_row.dart';
import '../../widgets/custom_text.dart';
import 'expense_card.dart';
import '../../widgets/reward_row.dart';
import '../../widgets/vertical_box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 7.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              WelcomeCard(),
              VerticalBox(size: 1),
              Divider(color: AppColors.greyText),
              VerticalBox(size: 4),
              CustomText(
                text: 'Complete your',
                color: AppColors.greyText,
                size: 20,
              ),
              CustomText(
                text: 'now KYC Now 😡',
                color: AppColors.greyText,
                size: 20,
              ),
              VerticalBox(size: 4),
              ExpenseCard(),
              VerticalBox(size: 2),
              NavBar(),
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

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: AppColors.secondaryBlue,
        ),
        const HorizontalBox(
          size: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomText(
              text: 'Welcome Back',
              color: AppColors.greyText,
              size: 12,
            ),
            CustomText(
              text: 'Waseem Akram',
              color: AppColors.primaryBlack,
              size: 16,
            ),
          ],
        ),
        HorizontalBox(size: 25),
        Image.asset('assets/images/Vector (6).png'),
      ],
    );
  }
}
