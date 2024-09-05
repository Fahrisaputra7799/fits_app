import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Messages',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: const [
          MessageTile(
            profileImage: 'https://randomuser.me/api/portraits/women/1.jpg',
            name: 'fahri saputra',
            message: 'Saya adalah liader di salah satu perusahaan',
            time: '20:18',
          ),
          MessageTile(
            profileImage: 'https://randomuser.me/api/portraits/women/2.jpg',
            name: 'farid',
            message: 'Infokan gacoan',
            time: '19:22',
          ),
          MessageTile(
            profileImage: 'https://randomuser.me/api/portraits/women/3.jpg',
            name: 'Rafif',
            message: 'Bentar lagi makan',
            time: '14:34',
          ),
          MessageTile(
            profileImage: 'https://randomuser.me/api/portraits/men/1.jpg',
            name: 'Azzam',
            message: 'Infokan salin kode',
            time: '11:05',
          ),
          MessageTile(
            profileImage: 'https://randomuser.me/api/portraits/men/2.jpg',
            name: 'Nabhan',
            message: 'Ayok ngajar',
            time: '09:46',
          ),
          MessageTile(
            profileImage: 'https://randomuser.me/api/portraits/men/3.jpg',
            name: 'Hasif',
            message: 'Anjayyyy lah',
            time: '08:15',
          ),
        ],
      ),
    );
  }
}

class MessageTile extends StatelessWidget {
  final String profileImage;
  final String name;
  final String message;
  final String time;

  const MessageTile({
    required this.profileImage,
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(profileImage),
        radius: 25,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
      subtitle: Text(message),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
