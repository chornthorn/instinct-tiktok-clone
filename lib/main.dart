import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/config/app_config.dart';
import 'package:flutter_tiktok_clone/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AppConfig(
        appName: "TikTok In AppConfig",
        flavorName: "Development",
        child: const MainPage(),
      ),
    );
  }
}
