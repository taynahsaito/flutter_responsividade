import 'package:flutter/material.dart';

class MobileTopSection extends StatelessWidget {
  const MobileTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://intelicity-assets.s3.sa-east-1.amazonaws.com/celular.jpg',
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Aprenda Flutter no seu tempo',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Bora aprender Flutter! Cursos por apenas 22,90. Qualidade Garantida',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Digite alguma busca aqui",
              contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              labelStyle: TextStyle(fontSize: 18, color: Colors.white),
              border: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.white), // Define a cor da borda
              ),
            ),
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
