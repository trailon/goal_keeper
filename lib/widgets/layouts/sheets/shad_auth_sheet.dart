import 'package:flutter/material.dart';
import 'package:goal_keeper/app/enums.dart';
import 'package:goal_keeper/app/router/router.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadAuthModalSheet extends StatelessWidget {
  const ShadAuthModalSheet(
      {super.key, required this.side, required this.router});
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
      actionsAxis: Axis.horizontal,
      actions: [
        Expanded(
          child: ShadButton(
            child: Text(S.current.sign_up_create),
            onPressed: () =>
                router.maybePop<ShadAuthModal>(ShadAuthModal.signUp),
          ),
        ),
        Expanded(
          child: ShadButton(
            child: Text(S.current.sign_in_alternative),
            onPressed: () =>
                router.maybePop<ShadAuthModal>(ShadAuthModal.signIn),
          ),
        ),
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
