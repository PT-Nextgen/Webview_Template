import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_template/configuration.dart';
import 'package:webview_template/pages/onboarding_page.dart';

import 'pages/main_page.dart';

int? initScreen;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = prefs.getInt("initScreen");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppData.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.appThemeColor),
        useMaterial3: true,
      ),
      home: initScreen == 1
          ? MainPage(
              url: AppData.appUrl,
            )
          : const OnBoardingPage(),
    );
  }
}
