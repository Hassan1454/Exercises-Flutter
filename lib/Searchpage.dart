import 'package:flutter/material.dart';
import 'package:bottomnavigation/List.dart';

class Searchpage extends StatelessWidget {
  final String receiveinbut;

  final list itm1 = list('عنوان', 'فرع');

  final list item1 = list('Item 1', 'This is a description for item 1.');
  final list item2 = list('Item 2', 'This is a description for item 2.');
  final list item3 = list('Item 3', 'This is a description for item 3.');
  final list item4 = list('Item 4', 'This is a description for item 4.');

  final list item5 = list('Item 5', 'This is a description for item 5.');
  final list item6 = list('Item 6', 'This is a description for item 6.');
  final list item7 = list('Item 7', 'This is a description for item 7.');
  final list item8 = list('Item 8', 'This is a description for item 8.');

  final list item9 = list('Item 9', 'This is a description for item 9.');
  final list item10 = list('Item 10', 'This is a description for item 10.');
  final list item11 = list('Item 11', 'This is a description for item 11.');
  final list item12 = list('Item 12', 'This is a description for item 12.');


  Searchpage({super.key,
         this.receiveinbut =''});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(backgroundColor: Colors.lightGreenAccent, title: Text('List title صفحة البحث',style: TextStyle(color: Colors.black ), ), ),

      body: ListView(

              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item1.title),
                  subtitle: Text(item1.subtitle),
                ),
                ListTile(
                  leading: Icon(Icons.home_max),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),
                ListTile(
                  leading: Icon(Icons.home_filled),
                  title: Text(item3.title),
                  subtitle: Text(item3.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home_mini),
                  title: Text(item4.title),
                  subtitle: Text(item4.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home_max_rounded),
                  title: Text(item5.title),
                  subtitle: Text(item5.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home_repair_service),
                  title: Text(item6.title),
                  subtitle: Text(item6.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.stop_circle),
                  title: Text(item7.title),
                  subtitle: Text(item7.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.surround_sound),
                  title: Text(item8.title),
                  subtitle: Text(item8.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.surround_sound_outlined),
                  title: Text(item9.title),
                  subtitle: Text(item9.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.play_arrow),
                  title: Text(item10.title),
                  subtitle: Text(item10.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.play_circle),
                  title: Text(item11.title),
                  subtitle: Text(item11.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.play_arrow_rounded),
                  title: Text(item12.title),
                  subtitle: Text(item12.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.play_disabled),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.expand),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.subtitles),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),  ListTile(
                  leading: Icon(Icons.home),
                  title: Text(item2.title),
                  subtitle: Text(item2.subtitle),
                ),
              ],
      ),
      );

  }
}