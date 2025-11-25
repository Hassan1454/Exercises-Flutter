import 'package:flutter/material.dart';
import 'TowPage.dart';

void main() {
  runApp(MaterialApp(
     home:  Homepage())
  );
}

class Homepage extends StatefulWidget {
   Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _controler1 = TextEditingController();
  TextEditingController _controler2 = TextEditingController();
  late String controller3;

  void Storgtext() {
    setState(() {
      _controler2.text = _controler1.text;

    });
  }
 void _nextPage(){
    Navigator.push(
       context,
      MaterialPageRoute(
         builder: (context) => Towpage(
            receivedText: _controler1.text,

    ),
      ),
    );
 }
 void _nextPage1(){
    Navigator.push(
       context,
      MaterialPageRoute(
         builder: (context) => Towpage(
            receivedText: _controler1.text,

    ),
      ),
    );
 }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       backgroundColor: Colors.greenAccent,
       appBar: AppBar(
         centerTitle: true,
         title: Text('حسان علي شاكر_7'),
       ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(

              // controller: _controler1,
                decoration: InputDecoration(
                  labelText: 'Enter name',
                  border: OutlineInputBorder(),

                ),
                 controller:  _controler1,
              ),

            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'ناتج حقل الادخال',
                  border: OutlineInputBorder(),

                ),
                controller: _controler2,
                readOnly: true,
              ),
            ),

            ElevatedButton(

                onPressed:() {
                  Storgtext(); //عند الضغط على الزر يستدعي داله تخزين النص في الحقل الثاني في cntroler2
                  },
                child: Text('Copy text to textfild 2 '),
            ),

            ElevatedButton(

                onPressed: (){
                  _nextPage(); //انتقال الى الصفحه الثانيه
                  },
                child: Text('Go to next page 2')
            ),

            // ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.blueGrey,
            //     ),
            //     onPressed: (){
            //     _nextPage1();
            //     },
            //     child: Text('next')
            //     )

          ],
        ),
     );


  }
}
