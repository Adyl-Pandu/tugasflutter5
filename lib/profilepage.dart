import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Variabel state: nilainya tidak lagi hardcode di widget anak
  String userName = 'Adyl Pandu Setiawan';

  final List<String> experiences = [
    'buat web pake laravel',
    'buat web pake node',
    'buat web pake js',
    'buat web pake php',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya')),
      body: Column(
        children: [
          const SizedBox(height: 24),
          const ProfileAvatar(),
          ProfileInfo(name: userName, role: 'Developer'),
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

class ProfileInfo extends StatelessWidget {
  final String name;
  final String role;

  const ProfileInfo({
    super.key,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          role,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String title;

  const ExperienceCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.work, color: Colors.blue),
        title: Text(title),
      ),
    );
  }
}

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      child: Icon(Icons.person, size: 50),
    );
  }
}

class StatItem extends StatelessWidget {
  final String value;
  final String label;

  const StatItem({
    super.key,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(label),
      ],
    );
  }
}

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        StatItem(value: '12', label: 'Proyek'),
        StatItem(value: '340', label: 'Followers'),
        StatItem(value: '180', label: 'Following'),
      ],
    );
  }
}