import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class User {
  final String name;
  final String email;

  User(this.name, this.email);
}

class MyApp extends StatelessWidget {
  final User user = User('John Doe', 'johndoe@example.com');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profil Pengguna'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/user_avatar.png'), // Ganti dengan path gambar avatar
              ),
              SizedBox(height: 20),
              Text(
                user.name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                user.email,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk mengedit profil pengguna
                },
                child: Text('Edit Profil'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk logout atau mengelola otentikasi pengguna
                },
                child: Text('Logout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
