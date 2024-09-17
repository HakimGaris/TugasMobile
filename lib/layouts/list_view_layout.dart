import 'package:flutter/material.dart';
import 'chat_page.dart'; // Import halaman chat

class ListViewLayout extends StatelessWidget {
  ListViewLayout({super.key});

  // Daftar nama kontak
  List<String> get names => [
        'Ucup',
        'Duta',
        'Udin',
        'Pahtur',
        'Nizam',
      ];

  // Daftar waktu pesan terakhir
  List<String> get chatterakahir => [
        '19:50',
        '16:10',
        '14:30',
        '10:45',
        '08:20',
      ];

  // Daftar gambar profil untuk setiap kontak
  final List<String> profileImages = [
    'assets/images/profile1.jpeg',
    'assets/images/profile2.jpeg',
    'assets/images/profile3.jpeg',
    'assets/images/profile4.jpeg',
    'assets/images/profile5.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: names.length, // Jumlah item di ListView berdasarkan panjang daftar nama
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 25, // Mengatur ukuran avatar
            backgroundImage: AssetImage(profileImages[index]), // Menampilkan gambar profil dari assets
            backgroundColor: Colors.transparent, // Transparan jika tidak ada gambar
          ),
          title: Text(names[index]), // Menampilkan nama kontak
          subtitle: Text('Last message from ${names[index]}'), // Pesan terakhir (dummy text)
          trailing: Text(chatterakahir[index]), // Waktu pesan terakhir
          onTap: () {
            // Navigasi ke halaman chat detail ketika item ditekan
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage(
                  contactName: names[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}


