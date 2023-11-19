import 'package:flutter/widgets.dart';

class AppConfig extends InheritedWidget {
  final String appName;
  final String flavorName; // dev, staging, prod

  AppConfig({
    required this.appName,
    required this.flavorName,
    required Widget child,
  }) : super(child: child);

  static AppConfig? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  static AppConfig of(BuildContext context) {
    final AppConfig? result = maybeOf(context);
    assert(result != null, 'No AppConfig found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
