// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

class TabungScreen extends StatefulWidget {
  @override
  _TabungScreenState createState() => _TabungScreenState();
}

class _TabungScreenState extends State<TabungScreen> {
  TextEditingController jariJariController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();

  double volume = 0;
  double keliling = 0;

  void hitungTabung() {
    double r = double.tryParse(jariJariController.text) ?? 0;
    double t = double.tryParse(tinggiController.text) ?? 0;

    setState(() {
      volume = pi * r * r * t;
      keliling = 2 * pi * r;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hitung Tabung'),
        backgroundColor: Colors.blue[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: jariJariController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Jari-jari',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: tinggiController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Tinggi',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungTabung,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[200],
              ),
              child: Text('Hitung', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            Text('Volume: ${volume.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Keliling: ${keliling.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
