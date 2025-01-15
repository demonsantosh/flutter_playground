import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'web_controller.dart';
import 'main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<WebController>(
      create: (_) => WebController(),
      child: MaterialApp(
        title: 'WebView Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainScreen(),
      ),
    );
  }
}