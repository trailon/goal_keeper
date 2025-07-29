import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:goal_keeper/models/category_model.dart';
import 'package:goal_keeper/utils/util_methods.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class CategoryScrollableList extends StatelessWidget {
  const CategoryScrollableList(
      {super.key, required this.title, required this.categories});
  final String title;
  final List<GoalCategory> categories;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(title),
        SingleChildScrollView(
          child: Row(
              children: categories
                  .map((category) => ShadCard(
                      child: AutoSizeText(
                          UtilityMethods.intl(category.categoryName))))
                  .toList()),
        ),
      ],
    );
  }
}
