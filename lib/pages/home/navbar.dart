import 'package:flutter/material.dart';
import 'package:teacher_application/pages/login/login.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: const Text(''),
              accountEmail: const Text('teacher@igdtuw.ac.in'),
              decoration: BoxDecoration(
                color: Colors.cyanAccent
              )
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Text('home page'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () => Text('profile page'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.feedback),
            title: const Text('Feedback'),
            onTap: () => Text('Feedback page'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => Text('Settings page'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>Login()
                  )
              );
            },
          )
        ],
      ),
    );
  }
}
