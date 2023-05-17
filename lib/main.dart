import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: const Color(0xFF0C1029),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      elevation: 0,
      color: const Color(0xFF0C1029),
      titleTextStyle: GoogleFonts.rubik(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Color(0xFFFFFDED),
        size: 24,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      height: 60,
      color: Color(0xFF131941),
    ),
    iconTheme: const IconThemeData(
      color: Color(0xFFFFFDED),
      size: 24,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF4D5ECB),
      elevation: 0,
      foregroundColor: Color(0xFFFFFDED),
    ),
    textTheme: GoogleFonts.rubikTextTheme(Typography.whiteMountainView),
  );

  runApp(
    GetMaterialApp(
      title: "iFlexhibit",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: darkTheme,
      themeMode: ThemeMode.dark,
      darkTheme: darkTheme,
    ),
  );
}
