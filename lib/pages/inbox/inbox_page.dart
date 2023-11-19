import 'package:flutter/material.dart';

import '../../config/app_config.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    var appConfig = AppConfig.maybeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(appConfig?.appName ?? 'Inbox Page'),
      ),
      body: Text('Inbox Page'),
    );
  }
}
