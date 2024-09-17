import 'package:flutter/material.dart';

class ProfileDetailPage extends StatelessWidget {
  final String name;
  final String image; // Nama file gambar tanpa ekstensi
  final String nim;

  const ProfileDetailPage({
    super.key,
    required this.name,
    required this.image,
    required this.nim,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name), // Nama di bagian AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/$image.jpeg'), // Foto profil
                radius: 50,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              nim, // NIM atau informasi lain dari pengguna
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
