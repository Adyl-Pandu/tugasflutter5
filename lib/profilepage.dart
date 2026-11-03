import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  String userName = 'Adyl Pandu Setiawan';

  final List<String> experiences = [
    'buat web pake laravel',
    'buat web pake node',
    'buat web pake js',
    'buat web pake php',
  ];

  void showEditDialog() {
    String newName = userName;

    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Edit Profil'),
          content: TextFormField(
            initialValue: userName, 
            onChanged: (value) {
              newName = value; 
            },
            decoration: const InputDecoration(
              labelText: 'Nama',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                if (newName.trim().isNotEmpty) {
                  setState(() {
                    userName = newName.trim();
                  });
                }
                Navigator.pop(dialogContext);
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: Column(
        children: [
          const SizedBox(height: 24),
          const ProfileAvatar(),
          ProfileInfo(name: userName, role: 'Developer'),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: showEditDialog,
            child: const Text('Edit Profil'),
          ),
          const SizedBox(height: 16),
          const ProfileStats(),
          const SizedBox(height: 16),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: experiences.length,
              itemBuilder: (context, index) {
                return ExperienceCard(title: experiences[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
