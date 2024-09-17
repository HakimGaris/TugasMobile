import 'package:flutter/material.dart';
import 'profile_detail_page.dart';

class ProfileListPage extends StatelessWidget {
  // Daftar nama dan foto dengan nama file gambar yang baru
  final List<Map<String, String>> profiles = [
    {
      'name': 'Muhammad Adam Fathurrizky',
      'image': 'assets/images/foto1.jpeg', // Menggunakan nama file baru
      'nim': '2209106112',
    },
    {
      'name': 'Azhar Nur Hakim',
      'image': 'assets/images/foto2.jpeg', // Menggunakan nama file baru
      'nim': '2209106113',
    },
  ];

  ProfileListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profiles'),
      ),
      body: ListView.builder(
        itemCount: profiles.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage(profiles[index]['image']!), // Foto profil
            ),
            title: Text(profiles[index]['name']!), // Nama orang
            onTap: () {
              // Navigasi ke halaman profil detail ketika profil ditekan
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileDetailPage(
                    name: profiles[index]['name']!,
                    image: profiles[index]['image']!
                        .split('/')
                        .last
                        .split('.')
                        .first, // Hanya nama file tanpa ekstensi
                    nim: profiles[index]['nim']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
