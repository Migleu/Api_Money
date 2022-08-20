import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:casa_apostas/splash/Splash.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(57, 49, 153, 1),
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light));

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: DefaultTheme.themeData,
      home: Splash(),
    );
  }
}
