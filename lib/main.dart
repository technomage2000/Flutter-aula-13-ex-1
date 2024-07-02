import 'package:flutter/material.dart';
import 'dados.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final Dados meusDados = Dados();

  @override
  Widget build(BuildContext context) {
    List<String> dados = meusDados.meses;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meses',
      home: Scaffold(
        body: ListView.builder(
            itemCount: dados.length,
            itemBuilder: (context, posicao) {
              return ListTile(
                title: Text(dados[posicao]),
              );
            }),
      ),
    );
  }
}
