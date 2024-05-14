import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Row(
        children: [
          const Text(
            'Flutter',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
              width: 16), // Adiciona espaçamento fixo entre o texto e os botões

          // Botões flexíveis que ocupam o espaço restante
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Botões flexíveis que ocupam o espaço restante
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Aprender',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Flutter',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

                      // Ícone de carrinho de compras
                      const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),

                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Fazer login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // Adiciona espaçamento fixo entre os botões
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Cadastre-se',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
