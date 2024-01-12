import 'package:flutter/material.dart';
import 'package:your_project_name/your_firebase_service.dart';

class YourHomePage extends StatelessWidget {
  final FirebaseService firebaseService = FirebaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Firebase CRUD'),
      ),
      body: StreamBuilder<List<Item>>(
        stream: firebaseService.getItems(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }
          List<Item> items = snapshot.data!;
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index].name),
                subtitle: Text('Quantity: ${items[index].quantity}'),
                onTap: () {
                  // Tambahkan logika untuk memperbarui atau menghapus item
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan logika untuk menambahkan item
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
