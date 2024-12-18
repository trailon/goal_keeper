import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:goal_keeper/app/strings/asset_strings.dart';
import 'package:goal_keeper/models/category_model.dart';
import 'package:goal_keeper/utils/util_methods.dart';
import 'package:goal_keeper/widgets/layouts/sheets/shad_category_pick_sheet.dart';
import 'package:goal_keeper/widgets/shad_components/shad_component_controllers/create_a_goal_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadCreateGoalDialog extends StatelessWidget {
  const ShadCreateGoalDialog({super.key, required this.goalCategory});
  final GoalCategory goalCategory;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CreateAGoalViewModel(),
        builder: (context, _) {
          return ShadDialog(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2),
                  child: ShadCardWithImage(
                    footer: UtilityMethods.intl(goalCategory.categoryName),
                    childImagePath: AssetStrings.dynamicCategoryAssetString(
                        goalCategory.categoryName),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Selector<CreateAGoalViewModel, bool>(
                      selector: (context, viewModel) => viewModel.isChained,
                      builder: (context, isChained, child) {
                        return ShadSwitch(
                          value: isChained,
                          duration: Duration(milliseconds: 250),
                          onChanged:
                              context.read<CreateAGoalViewModel>().setIsChained,
                          label: AutoSizeText("Is Chained"),
                        );
                      },
                    ),
                    Selector<CreateAGoalViewModel, DateTime>(
                      selector: (context, viewModel) =>
                          viewModel.estimatedAccomplishDate,
                      builder: (context, estimatedAccomplishDate, child) {
                        return ListTile(
                          onTap: () async {
                            await showShadDialog(
                                context: context,
                                builder: (context) => ShadCalendar());
                          },
                          leading: Icon(Icons.calendar_month_outlined),
                          title: AutoSizeText(
                            estimatedAccomplishDate.toIso8601String(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
