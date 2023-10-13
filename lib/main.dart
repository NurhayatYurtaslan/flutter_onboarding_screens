import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
<<<<<<< HEAD
import 'package:onboarding_screens/view/main_page_view.dart';
=======
import 'package:onboarding_screens/view/first_page_view.dart';
>>>>>>> e046bfd004a266019a05d6fd5e01d38ed8a0fdfc
import 'package:flutter_bloc/flutter_bloc.dart';

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
