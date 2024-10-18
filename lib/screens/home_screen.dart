import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState()=> _HomeState();
}

class _HomeState extends State<HomeScreen>{
   
   @override
   Widget build(BuildContext context){
    return const Scaffold(
      body: Center(child: 
      Text('HOME'),),
    );
   }
}