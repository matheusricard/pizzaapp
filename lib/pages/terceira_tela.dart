import 'package:flutter/material.dart';

class Pizzaa {
  final String title;
  final String description;
  final String imagePath;
  final String preco;

  Pizzaa({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.preco,
  });
}

class TerceiraTela extends StatelessWidget {
  final Pizzaa pizza;

  TerceiraTela({required this.pizza});

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              pizza.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(
              pizza.imagePath,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            Text(
              'Descrição: ${pizza.description}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Preço: ${pizza.preco}',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
