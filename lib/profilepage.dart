import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ProfileAvatar(),
            ProfileInfo(),
            Profilestatistics()
          ],
        ),
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Adyl Pandu Setiawan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text('Developer',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
      ],
    )
    ;
  }
}

class Profilestatistics extends StatelessWidget {
  const Profilestatistics ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Column(
            children: [
              Text('12', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Proyek'),
            ],
          ),
          Column(
            children: [
              Text('340', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Followers'),
            ],
          ),
          Column(
            children: [
              Text('180', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Following'),
            ],
          ),
      ]
    );
  }
}
