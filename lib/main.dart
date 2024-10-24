import 'package:flutter/material.dart';
import 'package:music_player/providers/playlistprovider.dart';
import 'package:music_player/services/music_service_permissionservice.dart';
import 'package:music_player/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => MusicProvider()),
            ChangeNotifierProvider(create: (_)=>PlaylistProvider())
          ],
          child: const MainApp(),
        );
       }
  }



class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     initialRoute: 'customhome',
      routes: Routes.getRoutes(),
      theme: ThemeData(
   scaffoldBackgroundColor: const Color.fromARGB(255, 86, 84, 84),
   appBarTheme: const AppBarTheme(color: Colors.transparent,),
   
      ),
    );
  }
}
