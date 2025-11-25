import 'package:flutter/material.dart';

class Towpage extends StatelessWidget {
  final String receivedText;

  Towpage({super.key,
    required this.receivedText});


  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text('Tow page '),
        centerTitle: true,
      ),
      body: Center(
       child:  Text(receivedText),
      ),
    );
  }
}
