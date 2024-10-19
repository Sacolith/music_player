import 'package:flutter/material.dart';

class QueScreen  extends StatelessWidget{
  const QueScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: const Center(child: Text('Que'),),
    );
  }
}