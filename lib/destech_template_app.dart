import 'package:auto_route/auto_route.dart';
import 'package:destech_template_app/app/app_config.dart';
import 'package:destech_template_app/utils/reset_focus.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app/themes/light_theme.dart';
import 'package:flutter/material.dart';

class DestechTemplateApp extends StatelessWidget {
  const DestechTemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      builder: (context, child) {
        debugPrint("TextScale: ${MediaQuery.of(context).textScaler.toString()}");
        return Navigator(
          onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) {
              return GestureDetector(
                key: ValueKey(settings.name),
                onTap: () => ResetFocus().initFocus(),
                child: MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)),
                    child: FlutterEasyLoading(
                        child:
                            child!)
                    ),
              );
            },
          ),
        );
      },
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('tr', 'TR'),
      supportedLocales: const [
        Locale('tr', 'TR'),
      ],
      scaffoldMessengerKey: AppConfig.rootScaffoldMessengerKey,
      routerDelegate: AppConfig.appRouter.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: AppConfig.appRouter.defaultRouteParser(),
    );
  }
}
