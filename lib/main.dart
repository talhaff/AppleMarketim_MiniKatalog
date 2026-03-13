import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MiniKatalogApp());
}

class MiniKatalogApp extends StatelessWidget {
  const MiniKatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Katalog',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        useMaterial3: true,

        /// 🎨 GLOBAL COLOR SYSTEM
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6366F1),
          brightness: Brightness.light,
        ),

        scaffoldBackgroundColor: const Color(0xFFF4F6FA),

        /// 🧠 TYPOGRAPHY
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w800,
            letterSpacing: -1,
          ),
          titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          bodyLarge: TextStyle(fontSize: 16, height: 1.5),
        ),

        /// 🧱 APPBAR STYLE
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: false,
          foregroundColor: Colors.black,
        ),

        /// 🔘 GLOBAL BUTTON STYLE
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 8,
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),

        /// 💬 SNACKBAR STYLE
        snackBarTheme: SnackBarThemeData(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentTextStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      home: const MainScreen(),
    );
  }
}
