import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const HydraFacialApp());
}

class HydraFacialApp extends StatelessWidget {
  const HydraFacialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HydraFacial Guide',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00BCD4),
          primary: const Color(0xFF00BCD4),
          secondary: const Color(0xFF4DD0E1),
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xFF00BCD4),
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomeScreen(),
      routes: {
        '/': (context) => const HomeScreen(),
      },
    );
  }
}
