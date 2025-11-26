import 'package:flutter/material.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.settings,color: Colors.blue,size: 24),
          Text('صفحة الاعدادات',style: TextStyle(fontSize: 24,color: Colors.blueAccent),)

        ],
      ),
    );
  }
}
