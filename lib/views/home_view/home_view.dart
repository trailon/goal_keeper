import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/models/category_model.dart';
import 'package:goal_keeper/widgets/category_widgets/grid_category_widget.dart';
import 'package:goal_keeper/widgets/current_goal_widget.dart';
import 'package:goal_keeper/widgets/layouts/shad_app_bar.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

import '../../app/blueprints/base_page_view.dart';
import 'home_viewmodel.dart';

@RoutePage(name: 'homeViewRoute')
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      builder: (context, _) {
        return BasePageView<HomeViewModel>(
          appBar: ShadAppBar(
            onTap: () => context.read<HomeViewModel>().checkForAuth(true),
            onChanged: context.read<HomeViewModel>().goalSearch,
          ),
          fabRequiresStatus: false,
          floatingActionButton: ShadButton(
            onPressed: context.read<HomeViewModel>().selectACategory,
            icon: Icon(Icons.add),
            child: AutoSizeText(S.current.create_a_new_goal),
          ).animate().moveX(
                end: context.width * 0.36,
                delay: Duration(seconds: 2),
                duration: Duration(milliseconds: 500),
              ),
          content: const _ViewContent(),
        );
      },
    );
  }
}

class _ViewContent extends StatelessWidget {
  const _ViewContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: CurrentGoalWidget(),
        ),
        Divider(),
        Selector<HomeViewModel, List<GoalCategory>>(
            builder: (context, categories, child) {
              if (categories.every((category) => category.goals.isEmpty)) {
                return Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: context.width * 0.7,
                        child: AutoSizeText(
                          S.current.create_a_new_goal_description,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      ShadButton(
                        onPressed:
                            context.read<HomeViewModel>().selectACategory,
                        child: AutoSizeText(S.current.create_a_new_goal),
                      )
                    ],
                  ),
                );
              }
              return CategoryScrollableList(
                categories: context.read<HomeViewModel>().categoriesWithGoals,
                title: "",
              );
            },
            selector: (context, HomeViewModel model) => model.categories),
      ],
    );
  }
}
