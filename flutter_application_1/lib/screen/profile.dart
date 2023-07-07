import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Center(
          child: Text('Profile'),
        ),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            CircleAvatar(
              radius: 80,
              child: Icon(
                Icons.person,
                size: 140,
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: InkWell(
                onTap: () {
                  // Navigate to another page for 'Nama Sopir'
                },
                child: ListTile(
                  title: Text(
                    'Nama Sopir',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  // Navigate to another page for 'Alamat'
                },
                child: ListTile(
                  title: Text('Alamat'),
                ),
              ),
            ),
            Card(
              child: InkWell(
                onTap: () {
                  // Navigate to another page for 'No Hp'
                },
                child: ListTile(
                  title: Text('No Hp'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
