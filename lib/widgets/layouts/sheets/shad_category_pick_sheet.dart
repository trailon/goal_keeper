import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:goal_keeper/app/router/router.dart';
import 'package:goal_keeper/app/strings/asset_strings.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/models/category_model.dart';
import 'package:goal_keeper/utils/util_methods.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadCategoryPickSheet extends StatelessWidget {
  const ShadCategoryPickSheet(
      {required this.categories,
      required this.router,
      required this.side,
      super.key});
  final List<GoalCategory> categories;
  final AppRouter router;
  final ShadSheetSide side;

  @override
  Widget build(BuildContext context) {
    return ShadSheet(
      constraints: side == ShadSheetSide.left || side == ShadSheetSide.right
          ? const BoxConstraints(maxWidth: 512)
          : null,
      title: AutoSizeText(S.current.categories_title),
      actions: [
        ShadButton(
          onPressed: () {
            router.maybePop<GoalCategory>(GoalCategory.custom());
          },
          child: AutoSizeText(S.current.create_your_own_category),
        )
      ],
      child: SizedBox(
        height: context.height * 0.6,
        width: context.width,
        child: GridView(
            shrinkWrap: true,
            padding: EdgeInsets.all(0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                mainAxisExtent: context.height * 0.168),
            children: [
              ...categories.map(
                (category) => InkWell(
                  onTap: () {
                    router.maybePop<GoalCategory>(category);
                  },
                  child: ShadCardWithImage(
                    footer: UtilityMethods.intl(category.categoryName),
                    childImagePath: AssetStrings.dynamicCategoryAssetString(
                        category.categoryName),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  router.maybePop<GoalCategory>(GoalCategory.custom());
                },
                child: ShadCardWithImage(
                  footer: S.current.create_your_own_category,
                  childImagePath: AssetStrings.addCustomCategory,
                ),
              ),
            ]),
      ),
    );
  }
}

class ShadCardWithImage extends StatelessWidget {
  const ShadCardWithImage({super.key, required this.footer, required this.childImagePath});
  final String footer;
  final String childImagePath;

  @override
  Widget build(BuildContext context) {
    return ShadCard(
      radius: BorderRadius.circular(14),
      padding: EdgeInsets.all(0),
      footer: Align(
        alignment: Alignment.center,
        child: AutoSizeText(
          footer,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image(
          image: AssetImage(
            childImagePath,
          ),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
