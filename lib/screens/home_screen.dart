import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=> _HomeState();
}

class _HomeState extends State<HomeScreen>{
   
   @override
   Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
      ) ,
      body: const Center(child: 
      Text('HOME'),),
    );
   }
}