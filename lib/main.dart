import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scoopia/core/theme/app_theme.dart';
import 'package:scoopia/data/routes/app_route.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoute.approute,
      theme: AppTheme.customtheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
    );
  }
}
