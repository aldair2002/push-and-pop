import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suma de Números',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SumaNumerosScreen(),
    );
  }
}

class SumaNumerosScreen extends StatefulWidget {
  @override
  _SumaNumerosScreenState createState() => _SumaNumerosScreenState();
}

class _SumaNumerosScreenState extends State<SumaNumerosScreen> {
  TextEditingController numero1Controller = TextEditingController();
  TextEditingController numero2Controller = TextEditingController();
  int resultado = 0;

  void sumarNumeros() {
    int num1 = int.tryParse(numero1Controller.text) ?? 0;
    int num2 = int.tryParse(numero2Controller.text) ?? 0;
    setState(() {
      resultado = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma de Números'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: numero1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 1'),
            ),
            TextField(
              controller: numero2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Número 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: sumarNumeros,
              child: Text('Sumar'),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado: $resultado',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
