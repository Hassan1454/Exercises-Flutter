import 'package:flutter/material.dart';

class Accountpage extends StatelessWidget {
  const Accountpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.account_box_rounded,size: 45,color: Colors.blue, ),
          Text('صفحة الحساب' , style: TextStyle(fontSize: 24, color: Colors.blueAccent),)
        ],
      ),
    );
  }
}
