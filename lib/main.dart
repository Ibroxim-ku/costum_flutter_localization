import 'package:costum_flutter_localization/core/local/app_local.dart';
import 'package:costum_flutter_localization/pages/home_page.dart';
import 'package:costum_flutter_localization/settings/inherited_cocal_notifier.dart';
import 'package:costum_flutter_localization/settings/local_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return InheritedLocalNotifier(
      localController: localController,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            locale: InheritedLocalNotifier.maybeOf(context)?.appLocale ??
                const Locale("ru", "RU"),
            supportedLocales: const [
              Locale("uz", "UZ"),
              Locale("ru", "RU"),
              Locale("en", "US"),
            ],
            initialRoute: "/",
            routes: {
              "/": (context) => const HomePage(),
            },
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
          );
        },
      ),
    );
  }
}
