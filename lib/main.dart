import 'dart:io';
import 'package:scheduling_tool/pages/home.dart';
import 'package:scheduling_tool/pages/loadData.dart';
import 'package:scheduling_tool/pages/settings.dart';
import 'package:window_size/window_size.dart';
import 'package:flutter/material.dart';
import 'package:scheduling_tool/pages/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Scheduling Tool');
    setWindowMinSize(const Size(1280, 720));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        '/home': (context) => Home(),
        '/loadData': (context) => LoadData(),
        '/settings': (context) => Settings(),
      },
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black87,
        appBarTheme: AppBarTheme(
          color: Colors.black87,
        ),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
