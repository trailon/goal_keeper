import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:goal_keeper/widgets/current_goal_widget.dart';
import 'package:goal_keeper/widgets/layouts/shad_app_bar.dart';
import 'package:provider/provider.dart';

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
        Center(
          child: ElevatedButton(
            onPressed: context.read<HomeViewModel>().pushToDetailView,
            child: const Text('Go to Detail View'),
          ),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
