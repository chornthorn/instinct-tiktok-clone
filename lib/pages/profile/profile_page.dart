import 'package:flutter/material.dart';
import 'package:flutter_tiktok_clone/config/app_config.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // var appConfig = context.dependOnInheritedWidgetOfExactType<AppConfig>();
    var appConfig = AppConfig.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(appConfig.appName),
      ),
      body: Text('Profile Page'),
    );
  }
}
