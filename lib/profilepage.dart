import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  final List<String> experiences = const [
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
          const ProfileAvatar(),
          const ProfileInfo(),
          const ProfileStats(),
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

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Adyl Pandu Setiawan',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text('Developer',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
      ],
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