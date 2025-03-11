// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class LayangLayangScreen extends StatefulWidget {
  @override
  _LayangLayangScreenState createState() => _LayangLayangScreenState();
}

class _LayangLayangScreenState extends State<LayangLayangScreen> {
  TextEditingController diagonal1Controller = TextEditingController();
  TextEditingController diagonal2Controller = TextEditingController();
  TextEditingController sisiAController = TextEditingController();
  TextEditingController sisiBController = TextEditingController();

  double luas = 0;
  double keliling = 0;

  void hitungLayangLayang() {
    double d1 = double.tryParse(diagonal1Controller.text) ?? 0;
    double d2 = double.tryParse(diagonal2Controller.text) ?? 0;
    double s1 = double.tryParse(sisiAController.text) ?? 0;
    double s2 = double.tryParse(sisiBController.text) ?? 0;

    setState(() {
      luas = 0.5 * d1 * d2;
      keliling = 2 * (s1 + s2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Layang-Layang'),
        backgroundColor: Colors.blue[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: diagonal1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Diagonal 1',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: diagonal2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Diagonal 2',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: sisiAController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Sisi A',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: sisiBController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Sisi B',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungLayangLayang,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[200],
              ),
              child: Text('Hitung', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            Text('Luas: $luas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Keliling: $keliling',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
