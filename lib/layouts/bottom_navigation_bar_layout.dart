import 'package:flutter/material.dart';
import 'list_view_layout.dart';  // Import Layout Chat
import 'profile_list_page.dart';  // Import Layout Profile List
import 'notes_page.dart'; // Import Halaman Notes

class BottomNavigationBarLayout extends StatefulWidget {
  const BottomNavigationBarLayout({super.key});

  @override
  _BottomNavigationBarLayoutState createState() => _BottomNavigationBarLayoutState();
}

class _BottomNavigationBarLayoutState extends State<BottomNavigationBarLayout> {
  int _selectedIndex = 0;

  // Daftar halaman untuk navigasi
  final List<Widget> _pages = [
    ListViewLayout(),   // Halaman Chat
    NotesPage(),        // Halaman Notes 
    ProfileListPage(),  // Halaman Daftar Profil
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],  // Menampilkan halaman sesuai dengan tab yang dipilih
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),    // Ikon Chat
            label: 'Chat',             // Label Chat
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),    // Ikon Notes (baru)
            label: 'Notes',            // Label Notes
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),  // Ikon Profile
            label: 'Profile',          // Label Profile
          ),
        ],
        currentIndex: _selectedIndex,  // Indeks halaman yang dipilih
        onTap: _onItemTapped,          // Mengubah halaman saat tab ditekan
      ),
    );
  }
}
