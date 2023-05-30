import 'package:agenda/domain/contato.dart';
import 'package:flutter/material.dart';

class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final contato = ModalRoute.of(context)!.settings.arguments as Contato;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Contato"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                contato.imagem,
                height: 128
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(contato.nome, style: theme.textTheme.headline4),
                  Text(contato.email, style: theme.textTheme.headline5),
                  Text(contato.dataNascimento, style: theme.textTheme.headline5),
                  Text("${contato.idade.toString()} Anos", style: theme.textTheme.headline5),
                  Text(contato.telefone, style: theme.textTheme.headline5)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}