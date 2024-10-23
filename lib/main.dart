import 'package:flutter/material.dart';
import 'package:music_player/services/music_service_permissionservice.dart';
import 'package:music_player/theme/color.dart';
import 'package:music_player/utils/routes.dart';
import 'package:music_player/widgets/custom_page_controller.dart';
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
     home:const CustomPageController(),
      routes: Routes.getRoutes(),
      theme: ThemeData(
   scaffoldBackgroundColor: const Color.fromARGB(255, 86, 84, 84),
   appBarTheme: const AppBarTheme(color: Colors.transparent,),
   
      ),
    );
  }
}
