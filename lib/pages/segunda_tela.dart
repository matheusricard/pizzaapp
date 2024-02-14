import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  // Lista de itens
  final List<String> items = List.generate(100, (index) => 'Item $index');

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
      body: Stack(
        children: <Widget>[
          ListView(
            children: [
              buildCard(
                context,
                "Pizza Calabresa",
                "Molho, Mussarela, Calabresa, Azeitona, Azeitona Preta, Tomate, Manjericão",
                "images/Calabresa.png",
                "P - 25,00  M - 35,00  G - 45,00",
              ),
              buildCard(
                context,
                "Pizza Portuguesa",
                "Molho, Mussarela, Presunto, Azeitona, Ovos Cozidos",
                "images/Portuguesa.png",
                "P - 25,00  M - 35,00  G - 45,00",
              ),
              buildCard(
                context,
                "Pizza Bacon",
                "Molho, Mussarela, Presunto, Azeitona, Ovos Cozidos",
                "images/bacon.png",
                "P - 25,00  M - 35,00  G - 45,00",
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset:Offset(0, -2),
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

  Widget buildCard(BuildContext context, String title, String subtitle, String imagePath, String preco) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenTop = MediaQuery.of(context).padding.top;
    double screenLeft = MediaQuery.of(context).padding.left;

    return Positioned(
      top: screenTop + 7.0,
      left: screenLeft + 10,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Stack(
          children: <Widget>[
            Container( // Container 01
              width: screenWidth / 1.0,
              height: screenHeight / 4.0,
              decoration: BoxDecoration(
                color: Colors.white,//Cor do Container
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),//Aumenta a opacidade
                    spreadRadius: 5,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        preco,
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width:  screenWidth / 1.0,
              height: screenHeight / 5.9,
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
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    imagePath,
                    width: 100, // ajuste conforme necessário
                    height: 100, // ajuste conforme necessário
                  ),
                  SizedBox(width: 10), // Espaçamento entre a imagem e o texto
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10), // Espaçamento entre o título e o subtítulo
                          Text(
                            subtitle,
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
      ),
    );
  }
}
