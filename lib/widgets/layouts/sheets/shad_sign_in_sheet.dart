import 'package:flutter/material.dart';
import 'package:goal_keeper/app/router/router.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadSignInSheet extends StatelessWidget {
  const ShadSignInSheet({super.key, required this.side, required this.router});
  final AppRouter router;
  final ShadSheetSide side;

  @override
  Widget build(BuildContext context) {
    return ShadSheet(
      constraints: side == ShadSheetSide.left || side == ShadSheetSide.right
          ? const BoxConstraints(maxWidth: 512)
          : null,
      title: Text(S.current.sign_up),
      description: Text(S.current.sign_up_text_suggestion),
      actionsAxis: Axis.vertical,
      actions: [
        ShadForm(
            child: Column(
          children: [
            /* ShadCustomInputFormField(
              id: "Username",
              label: "Username",
              placeHolder: "Enter your username",
              description: "This is your public display name.",
            ), */
          ],
        )),
      ],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [],
        ),
      ),
    );
  }
}
