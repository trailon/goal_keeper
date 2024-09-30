import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/material.dart';
import 'package:goal_keeper/app/app_defaults.dart';
import 'package:goal_keeper/app/locator/locator.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/goal_keeper.dart';
import 'package:permission_manager/permission_manager.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PermissionManager();
  setupLocator();
  String? locale = await Devicelocale.currentLocale;
  await S.load(Locale(locale ?? "en"));
  await Supabase.initialize(
    url: AppDefaults.kSupaBaseUrl,
    anonKey: AppDefaults.kSupaBaseAnonKey,
  );
  runApp(const GoalKeeper());
}
