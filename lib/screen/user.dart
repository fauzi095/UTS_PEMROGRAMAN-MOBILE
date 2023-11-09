import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UserPage(),
  ));
}

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Pengguna'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/nama_gambar_profil.png'),
              radius: 50.0,
            ),
            SizedBox(height: 20.0),
            Text(
              'Nama Pengguna Anda',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUserPage()));
              },
              child: Text('Tentang'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang'),
      ),
      body: Center(
        child: Text(
          'Ini adalah halaman "Tentang" Anda.',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
