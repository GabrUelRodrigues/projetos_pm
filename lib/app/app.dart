import 'package:agenda/presentation/pages/contatos_page.dart';
import 'package:agenda/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Agenda",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/contato":(context) => const ContatoPage()
      },
    );
  }
}