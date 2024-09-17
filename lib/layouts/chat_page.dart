import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String contactName;

  const ChatPage({
    super.key,
    required this.contactName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with $contactName'),
      ),
      body: Column(
        children: [
          // Tampilan chat messages (misalnya, gunakan ListView untuk daftar pesan)
          Expanded(
            child: ListView(
              // Ini adalah contoh, ganti dengan data yang sesuai
              children: const [
                ListTile(
                  title: Text('Hello'),
                ),
                ListTile(
                  title: Text('p'),
                ),
              ],
            ),
          ),
          // Input untuk menulis pesan
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    // Kirim pesan
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
