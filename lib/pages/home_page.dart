import 'package:flutter/material.dart';
import "package:pizzaapp/pages/segunda_tela.dart";


class PizzaHome extends StatelessWidget {
  const PizzaHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Obtém a altura e a largura da tela
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: screenHeight, // Usa a altura da tela
                    decoration: BoxDecoration(
                      color: Colors.redAccent.shade700,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: screenHeight, // Usa a altura da tela
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade700,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Image.asset(
                'images/pizza.png',
                width: screenWidth / 1.5, // Usa a largura da tela
                height: screenHeight / 1.5, // Usa a altura da tela
              ),
            ),
            Positioned(
              top: -40,
              left: 40,
              child: Image.asset(
                'images/npizza.png',
                width: screenWidth / 1.2, // Usa a largura da tela
                height: screenHeight / 1.2, // Usa a altura da tela
              ),
            ),
            Positioned(
              bottom: 50,
              left: 100,
              right: 100,
              child: ElevatedButton(
                onPressed: () {
                  // Navegação para outra tela ao pressionar o botão
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SegundaTela()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellowAccent[700],
                  fixedSize: Size(screenWidth / 2, 50), // Usa a largura da tela
                ),
                child: Text('Entrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

