import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class ShadCustomInputFormField extends StatelessWidget {
  const ShadCustomInputFormField(
      {super.key,
      required this.id,
      this.label,
      required this.placeHolder,
      required this.description,
      this.validator,
      this.obscure = false,
      this.onPressed,
      this.enabled = true,
      this.suffixIcon,
      this.suffixOnPressed,
      this.submitText,
      required this.controller,
      required this.onChanged});
  final dynamic id;
  final String? label;
  final String placeHolder;
  final String description;
  final String? Function(String)? validator;
  final bool obscure;
  final bool enabled;
  final String? submitText;
  final TextEditingController controller;
  final void Function()? onPressed;
  final void Function()? suffixOnPressed;
  final Widget? suffixIcon;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ShadInputFormField(
            id: id,
            onChanged: onChanged,
            obscureText: obscure,
            label: label != null ? AutoSizeText(label!) : null,
            controller: controller,
            placeholder: AutoSizeText(placeHolder),
            enabled: enabled,
            suffix: suffixIcon != null
                ? IconButton(onPressed: suffixOnPressed, icon: suffixIcon!)
                : null,
            description: AutoSizeText(
              description,
              maxFontSize: 12,
              minFontSize: 10,
              textAlign: TextAlign.start,
            ),
            validator: enabled ? validator : null),
        if (onPressed != null)
          Align(
            alignment: Alignment.centerRight,
            child: ShadButton(
              onPressed: onPressed,
              child: AutoSizeText(submitText ?? S.current.next),
            ),
          ),
        Divider()
      ],
    );
  }
}
