import 'package:calculadora/componentes/botao.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'botao.dart';

class LinhaBotao extends StatelessWidget {
  final List<Botao> botoes; //nome da lista

  LinhaBotao(this.botoes);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch, //ESTICAR ELEMENTOS DA COLUNA
        children: botoes.fold(<Widget>[], (List, b) {
          List.isEmpty ? List.add(b): List.addAll([SizedBox(width: 1), b]);
          return List;

        }),
      ),
    );
      
  }
}
  
