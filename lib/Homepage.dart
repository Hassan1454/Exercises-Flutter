import 'package:bottomnavigation/Searchpage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
      TextEditingController _controller1 = TextEditingController();
      TextEditingController _controller2 = TextEditingController();
      
      void _storgText(){
        setState(() {
          _controller2.text = _controller1.text;
        });
      }
      
      void _nextpageSearch(){
        Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => Searchpage(
              receiveinbut: _controller1.text,
            ) //اسم الصفحه التي سينتقل اليها
        ));

      }
          

  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(margin: EdgeInsets.all(16) ,
            child: TextField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                labelText: 'ادخل أسمك',
                border: OutlineInputBorder(),
              ),

              controller: _controller1,
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'النص المدخل',
                border: OutlineInputBorder(),
              ),
              controller: _controller2,
              readOnly: true,
            ),
          ),

          ElevatedButton(

              onPressed: (){
                _storgText();
              },
              child: Text('  لصق نص الحقل الاول الى الحقل الثاني',style:TextStyle(color:Colors.white,)),
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green),
          ),
          
          ElevatedButton(
              onPressed:(){
              _nextpageSearch();},
              child: Text('الانتقال الى صفحة البحث',style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green
            ),
          )

        ],
      ),
    );
  }
}
