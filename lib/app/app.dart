import 'package:flutter/material.dart';
import 'package:menu/presentation/pages/home_page.dart';
import 'package:menu/presentation/pages/lanche_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cardápio',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: "/",
      routes: {
        "/":(context) => const HomePage(),
        "/lanche":(context) => const LanchePage()
      },
    );
  }
}