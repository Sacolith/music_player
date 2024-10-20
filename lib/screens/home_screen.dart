import 'package:flutter/material.dart';
import 'package:music_player/services/music_service_permissionservice.dart';
import 'package:music_player/widgets/custom_text.dart';
import 'package:music_player/widgets/default_screen.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=> _HomeState();
}

class _HomeState extends State<HomeScreen>{

final MusicService musicService=const MusicService();

   
   @override
   Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: const CustomText(),
      ) ,
      body: const DefaultScreen()
    );
   }
}