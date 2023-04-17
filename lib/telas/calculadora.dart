import 'dart:async';

import 'package:calculadora/componentes/teclado.dart';
import 'package:calculadora/models/memoria.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../componentes/display.dart';
import '../componentes/teclado.dart';

class Calculadora extends StatefulWidget{
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  final Memoria memoria = Memoria();
  _onPressed(String command){
    setState(() {
      memoria.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);


    return MaterialApp(
      home: Column(
        children: <Widget> [
          Display(memoria.values), //substituindo o texto pelo componente display
          Teclado(_onPressed), // substituindo o texto pelo componente teclado
        ],

      )
      
    );
  }
}