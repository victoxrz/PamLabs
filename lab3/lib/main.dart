import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lab2/controllers/course_controller.dart';
import 'package:lab2/controllers/home_controller.dart';
import 'package:lab2/screens/home_screen.dart';

void main() {
  Get.put(HomeController());
  Get.put(CourseController());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(),
        textTheme: GoogleFonts.plusJakartaSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const Scaffold(body: SafeArea(child: HomeScreen())),
    );
  }
}
