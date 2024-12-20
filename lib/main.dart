import 'package:device_preview/device_preview.dart';
import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goal_keeper/app/app_defaults.dart';
import 'package:goal_keeper/app/locator/locator.dart';
import 'package:goal_keeper/generated/l10n.dart';
import 'package:goal_keeper/goal_keeper.dart';
import 'package:goal_keeper/services/storage_service.dart';
import 'package:permission_manager/permission_manager.dart';
import 'package:shadcn_ui/shadcn_ui.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PermissionManager();
  setupLocator();
  String? locale = await Devicelocale.currentLocale;
  await S.load(Locale(locale ?? "en"));
  StorageService.pref = await SharedPreferences.getInstance();
  await Supabase.initialize(
    url: AppDefaults.kSupaBaseUrl,
    anonKey: AppDefaults.kSupaBaseAnonKey,
  );
  Animate.restartOnHotReload = true;
  if (kDebugMode && false) {
    final client = Supabase.instance.client;
    await client.auth.signOut();
    await StorageService.pref.clear();
    debugPrint("current user: ${client.auth.currentUser}");
  }

  runApp(
    DevicePreview(
      enabled: false,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const GoalKeeper(),
    ),
  );
}
