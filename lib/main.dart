import 'package:flutter/material.dart';
import 'package:music_player/theme/color.dart';
import 'package:music_player/utils/routes.dart';
import 'package:music_player/widgets/custom_page_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     home:const CustomPageController(),
      routes: Routes.getRoutes(),
      theme: ThemeData(
   scaffoldBackgroundColor: Coloring.lavenderBlue,
   appBarTheme: const AppBarTheme(color: Colors.transparent),
   
      ),
    );
  }
}
