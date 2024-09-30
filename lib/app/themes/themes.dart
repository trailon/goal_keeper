import 'dart:ui';

import 'package:shadcn_ui/shadcn_ui.dart';

final darkColorScheme =
    ShadColorScheme.fromName('slate', brightness: Brightness.dark);
final lightTheme = ShadThemeData(
  brightness: Brightness.light,
  colorScheme: ShadColorScheme.fromName('blue'),
);
final darkTheme =
    ShadThemeData(brightness: Brightness.dark, colorScheme: darkColorScheme);
