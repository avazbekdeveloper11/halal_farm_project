import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:halal_farm/router/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en', 'ru'),
      ],
      path: 'assets/languages/',
      saveLocale: true,
      fallbackLocale: Locale("en", "uz"),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _route = RouteGenerator();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "/splash_screen",
      onGenerateRoute: _route.generateRoute,
    );
  }
}
