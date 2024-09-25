import 'package:flutter/material.dart';
import 'package:goal_keeper/app/locator/locator.dart';
import 'package:goal_keeper/goal_keeper.dart';
import 'package:image_provider/image_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PermissionManager.initialize();
  setupLocator();
  runApp(const GoalKeeper());
}
