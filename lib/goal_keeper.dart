import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:goal_keeper/app/app_config.dart';
import 'package:goal_keeper/app/themes/themes.dart';
import 'package:goal_keeper/utils/reset_focus.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class GoalKeeper extends StatelessWidget {
  const GoalKeeper({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: lightTheme,
      darkTheme: darkTheme,
      builder: (context, child) {
        debugPrint(
            "TextScale: ${MediaQuery.of(context).textScaler.toString()}");
        return Navigator(
          onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (context) {
              return GestureDetector(
                key: ValueKey(settings.name),
                onTap: () => ResetFocus().initFocus(),
                child: MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: const TextScaler.linear(1.0)),
                    child: FlutterEasyLoading(child: child!)),
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
        Locale('en', 'EN'),
      ],
      routerDelegate: AppConfig.appRouter.delegate(
        navigatorObservers: () => [AutoRouteObserver()],
      ),
      routeInformationParser: AppConfig.appRouter.defaultRouteParser(),
    );
  }
}
