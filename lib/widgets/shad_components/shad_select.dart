import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadCustomSelect<T> extends StatelessWidget {
  const ShadCustomSelect({
    super.key,
    required this.items,
    required this.onChanged,
    required this.selectedOptionBuilder,
    this.placeholder,
  });

  final Map<T, (String, IconData?)> items;
  final void Function(T?) onChanged;
  final Widget Function(BuildContext, T value) selectedOptionBuilder;
  final Widget? placeholder;

  @override
  Widget build(BuildContext context) {
    final theme = ShadTheme.of(context);

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 180),
      child: ShadSelect<T>(
        placeholder: placeholder,
        options: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 6, 6, 6),
            child: Text(
              'Options',
              style: theme.textTheme.muted.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.popoverForeground,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          ...items.entries.map(
            (e) => ShadOption(
              value: e.key,
              selectedIcon: e.value.$2 != null
                  ? Icon(
                      e.value.$2,
                      color: Colors.amber,
                    )
                  : null,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(e.value.$1),
              ),
            ),
          ),
        ],
        selectedOptionBuilder: selectedOptionBuilder,
        onChanged: onChanged,
      ),
    );
  }
}
