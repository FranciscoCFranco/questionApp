import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questão.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });

    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao((perguntas[_perguntaSelecionada])),
            ElevatedButton(onPressed: _responder, child: Text('Pergunta 1')),
            ElevatedButton(onPressed: _responder, child: Text('Pergunta 2')),
            ElevatedButton(onPressed: _responder, child: Text('Pergunta 3'))
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
