import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_list/config/init_binding.dart';
import 'package:movies_list/config/scroll_behavior_modified.dart';
import 'package:movies_list/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitBinding(),
      builder: (context, widget) => ScrollConfiguration(behavior: const ScrollBehaviorModified(), child: widget!),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
