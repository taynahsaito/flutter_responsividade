import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WebTopSection extends StatelessWidget {
  const WebTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2.3,
          child: Image.network(
            'https://intelicity-assets.s3.sa-east-1.amazonaws.com/celular.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          left: 80,
          top: 10,
          child: SizedBox(
            width: 450,
            height: 500,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.black,
              child: const Column(
                children: [
                  Text(
                    'Aprenda Flutter no seu tempo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Bora aprender Flutter! Cursos por apenas 22,90. Qualidade Garantida',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Digite alguma busca aqui",
                      contentPadding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.white), // Define a cor da borda
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
