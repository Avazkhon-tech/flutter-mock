import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Profile', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.square_arrow_right, color: Colors.red),
            onPressed: () {
              // Handle logout action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.orange,
            child: Icon(CupertinoIcons.person, color: Colors.black, size: 50),
          ),
          const SizedBox(height: 10),
          const Text(
            'Name',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const Text(
            'E-male',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          const SizedBox(height: 30),
          const Divider(color: Colors.orange),
          ListTile(
            title: const Text('Edit Profile', style: TextStyle(color: Colors.white)),
            trailing: const Icon(CupertinoIcons.chevron_forward, color: Colors.orange),
            onTap: () {
              // Handle Edit Profile action
            },
          ),
          const Divider(color: Colors.orange),
          ListTile(
            title: const Text('Language', style: TextStyle(color: Colors.white)),
            trailing: const Icon(CupertinoIcons.chevron_forward, color: Colors.orange),
            onTap: () {
              // Handle Language action
            },
          ),
          const Divider(color: Colors.orange),
          ListTile(
            title: const Text('Theme', style: TextStyle(color: Colors.white)),
            trailing: const Icon(CupertinoIcons.chevron_forward, color: Colors.orange),
            onTap: () {
              // Handle Theme action
            },
          ),
          const Divider(color: Colors.orange),
          ListTile(
            title: const Text('Write to Admin', style: TextStyle(color: Colors.white)),
            trailing: const Icon(CupertinoIcons.chevron_forward, color: Colors.orange),
            onTap: () {
              // Handle Write to Admin action
            },
          ),
          const Divider(color: Colors.orange),
        ],
      ),
    );
  }
}

