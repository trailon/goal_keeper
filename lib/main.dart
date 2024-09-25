import 'package:destech_template_app/app/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:image_provider/image_provider.dart';

import 'destech_template_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PermissionManager.initialize();
  setupLocator();
  runApp(const DestechTemplateApp());
}
