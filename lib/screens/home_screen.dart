import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // El key nos sirve para identificar un widget dentro del contexto
  const HomeScreen({Key? key}) : super(key: key);

  // El build context es todo el arbol de widgets
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    int counter = 10;

    //Scaffold no contiene child o children
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Número de Clicks', style: fontSize30),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {

          counter++;
          print('$counter');
        },
      ),
    );
  }
}
