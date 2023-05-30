import 'package:agenda/data/contatos_repository.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final contatos = loadContatos();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Agenda"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: contatos.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              "/contato",
              arguments: contatos[index]
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(contatos[index].nome)
              ],
            ),
          ),
        ),
      ),
    );
  }
}