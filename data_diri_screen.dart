// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class DataDiriScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Diri'),
        backgroundColor: Colors.blue[200],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/yolanda.jpg'),
              ),
              SizedBox(height: 20),
              InfoCard(title: 'Nama', value: 'Yolanda Aisha Hs'),
              InfoCard(title: 'NIM', value: '123210182'),
              InfoCard(title: 'Kelas', value: 'IF-A'),
              InfoCard(
                  title: 'Hobi',
                  value:
                      'Menggambar, Mendengarkan Lagu, Menonton Film, Membaca Buku'),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String value;

  InfoCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.purple[100],
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Text(value, style: TextStyle(fontSize: 14)),
      ),
    );
  }
}
