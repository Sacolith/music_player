import 'package:flutter/material.dart';
import 'package:music_player/services/music_service_permissionservice.dart';
import 'package:music_player/widgets/layout/custom_layout.dart';
import 'package:music_player/widgets/text/custom_text.dart';


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
      body: const CustomLayout(),
    );
   }
}