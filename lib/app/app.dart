import 'package:flutter/material.dart';
import 'package:quiz/presentation/pages/home_page.dart';
import 'package:quiz/presentation/pages/product_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const HomePage(),
        "/question" : (context) => const ProductPage()
      },
    );
  }
}