import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  final List<String> perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];

  void responder() {
    setState(() {
      this.perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

  @override
  // Passo o método build para essa classe porque a árvore de componentes depende do estado da aplicação para ser renderizada
  Widget build(BuildContext context) {
    // a class stateless precisa implementar o overrride do método build
    return new MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Meu primeiro app'),
          ),
          body: Column(
            children: <Widget>[
              Text(this.perguntas[this.perguntaSelecionada]),
              ElevatedButton(
                onPressed: this.responder,
                child: Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: this.responder,
                child: Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: this.responder,
                child: Text('Resposta 3'),
              ),
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  State<PerguntaApp> createState() {
    return new PerguntaAppState();
  }
}
