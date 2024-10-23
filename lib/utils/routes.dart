import 'package:flutter/material.dart';
import 'package:music_player/screens/home_screen.dart';

class Routes {
  static Map<String, WidgetBuilder> getRoutes(){
    return{
      'home':(context)=> const HomeScreen(),
      
    };
  }
}