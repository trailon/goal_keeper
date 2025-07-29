import 'package:flutter/material.dart';
import 'package:goal_keeper/app/enums.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/models/category_model.dart';
import 'package:goal_keeper/views/home_view/home_viewmodel.dart';
import 'package:goal_keeper/widgets/shad_components/shad_input_field.dart';
import 'package:goal_keeper/widgets/shad_components/shad_select.dart';
import 'package:provider/provider.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadGoalCreationSheet extends StatelessWidget {
  const ShadGoalCreationSheet({
    super.key,
    required this.selectedCategory,
  });

  final GoalCategory selectedCategory;

  Future<void> _submit(BuildContext context) async {
    await context.read<HomeViewModel>().submitGoalCreation(selectedCategory);
  }

  @override
  Widget build(BuildContext context) {
    final homeViewModel = context.read<HomeViewModel>();

    return ShadSheet(
      title: Text(S.current.create_a_new_goal),
      actions: [
        ShadButton(
          onPressed: () => _submit(context),
          child: Text(S.current.done),
        )
      ],
      child: ShadForm(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShadCustomInputFormField(
              id: 'goal_name',
              controller: homeViewModel.nameController,
              onChanged: homeViewModel.goalNameOnChanged,
              placeHolder: S.current.enter_goal_name,
              description: S.current.enter_goal_description,
              validator: (val) => val.trim().isEmpty ? S.current.goal_name_required : null,
            ),
            const SizedBox(height: 12),
            Selector<HomeViewModel, GoalTypeKey>(
              selector: (_, vm) => vm.selectedGoalType,
              builder: (_, selectedType, __) => ShadCustomSelect<GoalTypeKey>(
                items: {
                  GoalTypeKey.normal: (S.current.normal, Icons.radio_button_unchecked),
                  GoalTypeKey.crowned: (S.current.crowned, Icons.emoji_events), // or Icons.workspace_premium
                  GoalTypeKey.important: (S.current.important, Icons.priority_high),
                },
                placeholder: Text(S.current.goal_type),
                selectedOptionBuilder: (_, value) {
                  final option = {
                    GoalTypeKey.normal: (S.current.normal, Icons.radio_button_unchecked),
                    GoalTypeKey.crowned: (S.current.crowned, Icons.emoji_events),
                    GoalTypeKey.important: (S.current.important, Icons.priority_high),
                  }[value]!;
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(option.$2, size: 18),
                      const SizedBox(width: 4),
                      Text(option.$1),
                    ],
                  );
                },
                onChanged: (val) => context.read<HomeViewModel>().setGoalType(val!),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
