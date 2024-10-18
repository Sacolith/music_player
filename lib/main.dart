import 'package:flutter/material.dart';
import 'package:music_player/utils/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: 'home',
      routes: Routes.getRoutes(),
      theme: ThemeData(
        
      ),
    );
  }
}
