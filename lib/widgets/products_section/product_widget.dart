import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductWidget extends StatelessWidget {
  ProductWidget({super.key});

  double valor = 22.90;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Image.asset(
        'lib/assets/foto.jpeg',
        width: 350,
        height: 220,
        fit: BoxFit.cover,
      ),
      const Wrap(
        children: [
          Text(
            "Criação de Apps Android e iOS com Flutter - Crie 16 Apps",
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      Text(
        "R$valor",
        style: const TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
      ),
    ]);
  }
}
