import 'package:flutter/material.dart';
import 'package:pizzaapp/pages/terceira_tela.dart';

class SegundaTela extends StatelessWidget {
  final List<Pizzaa> pizzas = [
    Pizzaa(
      title: "Pizza Calabresa",
      description:
          "Molho, Mussarela, Calabresa, Azeitona, Azeitona Preta, Tomate, Manjericão",
      imagePath: "images/Calabresa.png",
      preco: "P - 25,00  M - 35,00  G - 45,00",
    ),
    Pizzaa(
      title: "Pizza Portuguesa",
      description: "Molho, Mussarela, Presunto, Azeitona, Ovos Cozidos",
      imagePath: "images/Portuguesa.png",
      preco: "P - 25,00  M - 35,00  G - 45,00",
    ),
    Pizzaa(
      title: "Pizza Bacon",
      description: "Molho, Mussarela, Presunto, Azeitona, Ovos Cozidos",
      imagePath: "images/bacon.png",
      preco: "P - 25,00  M - 35,00  G - 45,00",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizza App'),
        backgroundColor: Colors.redAccent.shade700,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView.builder(
        itemCount: pizzas.length,
        itemBuilder: (context, index) {
          final pizza = pizzas[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TerceiraTela(pizza: pizza),
                ),
              );
            },
            child: buildCard(pizza),
          );
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, -2),
              spreadRadius: 2,
              blurRadius: 4,
            ),
          ],
        ),
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
              color: Colors.red,
            ),
            SizedBox(width: 30),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
              color: Colors.black,
            ),
            SizedBox(width: 30),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(Pizzaa pizza) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: 400,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    pizza.preco,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, -2),
                  spreadRadius: 2,
                  blurRadius: 4,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(0, 2),
                  spreadRadius: 2,
                  blurRadius: 3,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  pizza.imagePath,
                  width: 100,
                  height: 100,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          pizza.title,
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          pizza.description,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style: TextStyle(
                            fontSize: 15.5,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
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
