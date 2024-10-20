import 'package:flutter/material.dart';
import 'package:music_player/services/music_service.dart';
import 'package:music_player/services/permission_service.dart';
import 'package:music_player/widgets/custom_text.dart';
import 'package:music_player/widgets/default_screen.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=> _HomeState();
}

class _HomeState extends State<HomeScreen>{

final MusicService musicService=MusicService();
String _error='';
String _status='';

  @override
  void initState(){
    super.initState();
    PermissionService().getPermission(
  musicService,
  (error) {
    setState(() {
      _error = error;
    });
  },
  (status) {
    setState(() {
      _status = status;
    });
  },
);
  }
   
   @override
   Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: const CustomText(),
      ) ,
      body: const DefaultScreen()
    );
   }
}