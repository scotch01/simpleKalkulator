import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  double num1 = 0;
  double num2 = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator Sederhana Ansharulhaq Aminsyah'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              TextField(
                controller: num1Controller,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Masukkan Angka Pertama"),
              ),
              TextField(
                controller: num2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Masukkan Angka Kedua"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Tambah'),
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num1Controller.text);
                    num2 = double.parse(num2Controller.text);
                    result = num1 + num2;
                  });
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Kurang'),
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num1Controller.text);
                    num2 = double.parse(num2Controller.text);
                    result = num1 - num2;
                  });
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Kali'),
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num1Controller.text);
                    num2 = double.parse(num2Controller.text);
                    result = num1 * num2;
                  });
                },
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Bagi'),
                onPressed: () {
                  setState(() {
                    num1 = double.parse(num1Controller.text);
                    num2 = double.parse(num2Controller.text);
                    result = num1 / num2;
                  });
                },
              ),
              SizedBox(height: 10),
              Text(
                "Hasil: $result",
                style: TextStyle(fontSize: 24),
              )
            ],
          )),
    );
  }
}
