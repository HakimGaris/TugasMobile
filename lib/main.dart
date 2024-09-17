import 'package:flutter/material.dart';
import 'layouts/bottom_navigation_bar_layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:
          BottomNavigationBarLayout(), // Menggunakan BottomNavigationBarLayout
    );
  }
}
