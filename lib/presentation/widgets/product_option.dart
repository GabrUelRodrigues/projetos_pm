import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String name;
  final double price;
  final Function(String) action;

  const Product({
    super.key,
    required this.name,
    required this.price,
    required this.action
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: double.maxFinite,
        child: ElevatedButton(
          onPressed: () => action(name),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(name),
              Text(price.toString())
            ],
          )
        ),
      ),
    );
  }
}