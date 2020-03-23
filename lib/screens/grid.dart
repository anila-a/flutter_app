/*import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('cdli tablet'),
      ),
      body: new Container(
        child: MyTablet(),
      ),
    );
  }
}

class MyTablet extends StatefulWidget {
  @override
  _TabletState createState() => _TabletState();
}

class _TabletState extends State<MyTablet> {
  final tablet_list = [
    {
      'name' : 'img',
      'image' : 'assets/images/img.jpg',
      'date' : '18 Mar'
    },
    {
      'name' : 'img',
      'image' : 'assets/images/img.jpg',
      'date' : '17 Mar'
    },
    {
      'name' : 'img',
      'image' : 'assets/images/img.jpg',
      'date' : '16 Mar'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: tablet_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ),
      itemBuilder: (BuildContext context, int index) {
        return Tablet(
          tablet_name: tablet_list[index]['name'],
          tablet_image: tablet_list[index]['image'],
          tablet_date: tablet_list[index]['date'],
        );
      },);
  }
}

class Tablet extends StatelessWidget {
  final tablet_name, tablet_image, tablet_date;
  Tablet({this.tablet_name, this.tablet_image, this.tablet_date});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: tablet_name,
          child: Material(
            child: InkWell(
              onTap: (){},
              child: GridTile(
                child: Image.asset("assets/images/img.jpg"),
              ),
            ),
          ))
    );
  }
}
*/
