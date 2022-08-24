import 'package:flutter/material.dart';
import 'package:zero_balance_project/widgets/custom_text.dart';
import 'package:zero_balance_project/widgets/vertical_box.dart';

import '../utils/colors.dart';

class CatergoryList extends StatefulWidget {
  const CatergoryList({
    Key? key,
  }) : super(key: key);

  @override
  State<CatergoryList> createState() => _CatergoryListState();
}

class _CatergoryListState extends State<CatergoryList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      width: double.maxFinite,
      child: ListView.builder(
          itemCount: category.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: const  BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        category[index].image,
                        fit: BoxFit.cover,
                        scale: 0.9,
                      ),
                    ),
                  ),
                  const VerticalBox(size: 2),
                  CustomText(
                    text: category[index].text,
                    size: 10,
                    color: AppColors.greyText,
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class CategoryModel {
  final String text;
  final String image;

  CategoryModel({
    required this.text,
    required this.image,
  });
}

List<CategoryModel> category = [
  CategoryModel(
    text: 'Food',
    image: 'assets/images/Vector (2).png',
  ),
  CategoryModel(
    text: 'Pet',
    image: 'assets/images/Vector (3).png',
  ),
  CategoryModel(
    text: 'Shopping',
    image: 'assets/images/Vector (4).png',
  ),
];
