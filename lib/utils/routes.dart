import 'package:flutter/material.dart';
import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/widgets/custom_page_controller.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(){
    return{
      'home':(context)=> const HomeScreen(),
      'customhome':(context)=> const CustomPageController()
    };
  }
}