// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class PenghitunganHariScreen extends StatefulWidget {
  @override
  _PenghitunganHariScreenState createState() => _PenghitunganHariScreenState();
}

class _PenghitunganHariScreenState extends State<PenghitunganHariScreen> {
  TextEditingController angkaController = TextEditingController();
  String namaHari = '';

  void hitungHari() {
    int angka = int.tryParse(angkaController.text) ?? 0;
    List<String> hari = [
      'Invalid',
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu'
    ];

    setState(() {
      if (angka >= 1 && angka <= 7) {
        namaHari = hari[angka];
      } else {
        namaHari = 'Angka harus 1-7!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penghitung Hari'),
        backgroundColor: Colors.blue[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: angkaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan angka (1-7)',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungHari,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[100],
              ),
              child:
                  Text('Tampilkan Hari', style: TextStyle(color: Colors.black)),
            ),
            SizedBox(height: 20),
            Text(namaHari,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
