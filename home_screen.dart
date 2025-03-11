// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'layang_layang_screen.dart';
import 'tabung_screen.dart';
import 'penghitungan_hari_screen.dart';
import 'data_diri_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Kalkulator'),
        backgroundColor: Colors.blue[200], // Biru muda
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              title: 'Hitung Layang-Layang',
              color: Colors.purple[200], // Ungu muda
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayangLayangScreen()),
                );
              },
            ),
            SizedBox(height: 15),
            CustomButton(
              title: 'Hitung Tabung',
              color: Colors.yellow[200], // Kuning
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TabungScreen()),
                );
              },
            ),
            SizedBox(height: 15),
            CustomButton(
              title: 'Penghitung Hari',
              color: Colors.blue[100], // Biru lebih muda
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PenghitunganHariScreen()),
                );
              },
            ),
            SizedBox(height: 15),
            CustomButton(
              title: 'Data Diri',
              color: Colors.purple[100], // Ungu lebih muda
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataDiriScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final Color? color;
  final VoidCallback onPressed;

  CustomButton(
      {required this.title, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
