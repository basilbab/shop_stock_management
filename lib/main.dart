import 'package:flutter/material.dart';
import 'package:shop_stock_management/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ScreenSplah());
  }
}
