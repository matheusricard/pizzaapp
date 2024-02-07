import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
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
      body: ListView(
        children: [
          buildCard("Pizza Calabresa", "Molho, Mussarela, Calabresa, Azeitona, Azeitona Preta, Tomate, Manjericão", "images/Calabresa.png"),
          buildCard("Pizza Portuguesa", "Molho, Mussarela, Presunto, Azeitona, Ovos Cozidos", "images/Portuguesa.png"),
          buildCard("Pizza Bacon", "Molho, Mussarela, Presunto, Azeitona, Ovos Cozidos", "images/bacon.png"),
        ],
      ),
    );
  }

  Card buildCard(String title, String subtitle, String imagePath) {
    return Card(
      // ignore: sort_child_properties_last
      child: Container(
        height: 150,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(0.8),
                child: Image.asset(imagePath),
              ),
            ),
            Expanded(
              flex: 8,
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Expanded(
                      flex: 50,
                      child: ListTile(
                        title: Text(title),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 20.0),
                          //child: Text(subtitle),
                        ),
                      ),
                    ),
                    // Adicionando um novo Card dentro do Container.
                    Card(
                      child: Container(
                        height: 125,
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(subtitle),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      elevation: 8,
      margin: EdgeInsets.all(10),
    );
  }
}
