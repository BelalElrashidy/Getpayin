import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          ),
          const SizedBox(height: 16),
          const Text('Client Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('client.email@example.com',
              style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 16),
          const Text('Account Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Expanded(
            child: ListView(
              children: const [
                ProfileDetailItem(title: 'Full Name', value: 'Client Name'),
                ProfileDetailItem(
                    title: 'Email', value: 'client.email@example.com'),
                ProfileDetailItem(title: 'Phone', value: '+123 456 7890'),
                ProfileDetailItem(
                    title: 'Address', value: '123 Street, City, Country'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileDetailItem extends StatelessWidget {
  final String title;
  final String value;

  const ProfileDetailItem(
      {super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}
