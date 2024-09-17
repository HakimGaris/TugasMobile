import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  // Daftar catatan orang-orang (ini contoh, bisa disesuaikan)
  final List<Map<String, String>> notes = [
    {
      'name': 'Ucup',
      'image': 'assets/images/profile1.jpeg',
      'note': 'adakah londry nya kawan',
    },
    {
      'name': 'Duta',
      'image': 'assets/images/profile2.jpeg',
      'note': 'ingpooo 100',
    },
    {
      'name': 'Udin',
      'image': 'assets/images/profile3.jpeg',
      'note': 'adakah  makanan nya kawan',

    },
    {
      'name': 'Pahtur',
      'image': 'assets/images/profile4.jpeg',
      'note': 'gasss pubg',
    },
    {
      'name': 'Nizam',
      'image': 'assets/images/profile5.jpeg',
      'note': 'adakah pesta nya',
    },
  ];

  NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(notes[index]['image']!), // Foto profil
            ),
            title: Text(notes[index]['name']!), // Nama orang
            subtitle: Text(notes[index]['note']!), // Catatan
            onTap: () {
              // Aksi jika note ditekan (misal untuk melihat detail atau edit catatan)
            },
          );
        },
      ),
    );
  }
}
