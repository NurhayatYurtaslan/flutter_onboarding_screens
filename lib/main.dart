import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboarding_screens/view/main_page_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      // statusBar kaldırmak için
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainView(),
    );
  }
}
