  
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:calculadora/models/memoria.dart';

class Display extends StatelessWidget{
  final String text; // texto que vou receber no display
  Display(this.text); // metodo construtor do display



  @override
  Widget build (BuildContext context){
    return Expanded(
      flex: 1,
      child: Container(
        color: Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch, //coluna ocupando a tela inteira
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  fontSize: 90,
                  color: Color.fromARGB(255, 255, 255, 255),

                ),
            ),
            ),
          ],
        ),
    
      ),
    );
      
  }
}