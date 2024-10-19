import 'package:flutter/material.dart';
import 'package:music_player/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=> _HomeState();
}

class _HomeState extends State<HomeScreen>{
   
   @override
   Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: const CustomText(),
      ) ,
      body: Expanded(
        child: Column(
               children: [
                // ListView.builder(
                //   itemCount: ,
                //   itemBuilder: );
               ],
        )
        )
    );
   }
}