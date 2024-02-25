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

class TerceiraTela extends StatefulWidget {
  final Pizzaa pizza;

  TerceiraTela({required this.pizza});

  @override
  _TerceiraTelaState createState() => _TerceiraTelaState();
}

class _TerceiraTelaState extends State<TerceiraTela> {
  bool isChecked = false;

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
      body: Container(
        margin: EdgeInsets.all(20),
        width: 400,
        height: 380,
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Text(
                widget.pizza.title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
              SizedBox(height: 15),
              Image.asset(
                widget.pizza.imagePath,
                width: 200,
                height: 200,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Descrição: ${widget.pizza.description}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: Icon(Icons.check),
        backgroundColor: isChecked ? Colors.green : Colors.grey,
      ),
    );
  }
}
