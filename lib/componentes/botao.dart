import 'package:flutter/material.dart';
class Botao extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 0.966);
  static const OPERATION = Color.fromRGBO(114, 172, 248, 1);
  final String text;
  final bool big;
  final Color color;
  final void Function (String) cb;
 Botao({ 
  required this.text,
  this.big =false,
  this.color= DEFAULT,
  required this.cb,
  });
 Botao.big({ 
  required this.text,
  this.big =true,
  this.color= DEFAULT,
  required this.cb,
  });
 Botao.operation({ 
  required this.text,
  this.big =false,
  this.color= OPERATION,
  required this.cb,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1, // expandir os botoes com o mesmo tamanho
      child: ElevatedButton(
        
        child: Text(
          text,
          style: TextStyle(
            color: Color.fromARGB(221, 255, 255, 255),
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
          ),
        onPressed: () => cb(text),
    
      ),
    );

  }
}