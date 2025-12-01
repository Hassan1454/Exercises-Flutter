import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Searchpage.dart';
import 'Accountpage.dart';
import 'Settingpage.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: indexpage() ,
  ));
}

class indexpage extends StatefulWidget {
  const indexpage({super.key});

  @override
  State<indexpage> createState() => _indexpageState();
}

class _indexpageState extends State<indexpage> {

  int _bottomnavbar = 0;
  List<Widget> _pages = [
    Homepage(),
    Searchpage(),
    Accountpage(),
    Settingpage(),

  ];

  String _gettitel(int index){
    switch (index){
      case 0 :
        return 'الصفحه الرئيسيه';
      case 1 :
        return 'صفحة البحث';
      case 2 :
        return 'صفحة الحساب';
      case 3 :
        return 'اعدادات الحساب';
      default :
        return '';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_gettitel(_bottomnavbar),
      ),
       centerTitle: true, backgroundColor: Colors.green
      ),

      body: IndexedStack(
        index: _bottomnavbar,
        children: _pages,
      ),

      bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
           setState(() {
             _bottomnavbar = index;

        });
    },

    items: [
           BottomNavigationBarItem(label: 'الصفحة الرئيسية', icon: Icon(Icons.home,color: Colors.lightGreen,),),
           BottomNavigationBarItem( label: ' صفحة البحث', icon: Icon(Icons.search,color: Colors.lightGreen,)),
           BottomNavigationBarItem(label: 'صفحة الحساب', icon: Icon(Icons.account_circle,color: Colors.lightGreen,)),
           BottomNavigationBarItem(label: 'صفحة الاعدادات', icon: Icon(Icons.settings,color: Colors.lightGreen,)),
    ],
    ),
    );
  }
}
