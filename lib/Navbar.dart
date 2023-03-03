// ignore_for_file: avoid_returning_null_for_void
import 'dart:io' show Platform, exit;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homeopathy/routes/cancerInput.dart';
import 'package:homeopathy/routes/chat_screen.dart';
import './routes/kidneyInput.dart';
import './routes/heartInput.dart';
import './routes/diabetesInput.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          // ignore: prefer_const_constructors
          UserAccountsDrawerHeader(
            accountName: const Text(
              '',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            accountEmail: const Text(''),
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/sidebar.jpg')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.monitor_heart),
            title: const Text('Heart Prediction'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HeartInput()))
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Diabetes Prediction'),
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DiabetesInput()))
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Kidney Prediction'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const KidneyInput()))
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Breast Cancer Prediction'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CancerInput()))
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Chat Bot'),
            onTap: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()))
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Policies'),
            onTap: () => null,
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {
              if (Platform.isAndroid) {
                SystemNavigator.pop();
              } else if (Platform.isIOS) {
                exit(0);
              }
            },
          ),
        ],
      ),
    );
  }
}
