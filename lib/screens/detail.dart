import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'CDLI Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: new DetailsState(),
    );
  }
}

class DetailsState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('cdli tablet'),
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: () => Navigator.of(context).pop()
        ),
        backgroundColor: Color(0xFFF000000),
      ),
      body: new Stack(
        children: <Widget>[
          new SizedBox.expand(
            child: Image.asset("assets/images/img.jpg", fit: BoxFit.cover,),),
          new DraggableScrollableSheet(
            minChildSize: 0.12,
            initialChildSize: 0.28,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: new Container(
                  constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
                  color: Color(0xfff191919),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      // title + icons
                      new Container(
                        padding: EdgeInsets.only(left: 32, right: 32, top: 32),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Expanded(
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Text("The Epic of Gilgamesh: 2", style: TextStyle(color: Colors.white,
                                    fontSize: 22, fontWeight: FontWeight.w700,),),
                                  new SizedBox(height: 20,), // Used for spacing
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new IconButton(
                                        icon: Icon(Icons.collections,
                                          color: Colors.grey, size: 30,),
                                        tooltip: "Save to collection",
                                        onPressed: () {
                                          showSnackBar(context); // Call function
                                        },
                                      ),
                                      new SizedBox(width: 33,),
                                      //new Icon(Icons.share, color: Colors.grey, size: 30,),
                                      new IconButton(
                                        icon: Icon(Icons.share,
                                          color: Colors.grey, size: 30,),
                                        tooltip: "Share",
                                        onPressed: () {
                                          // shareOption();
                                          final RenderBox box = context.findRenderObject();
                                          Share.share("Check this out: ", subject: "");
                                        },),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // text
                      new Container(
                        padding: EdgeInsets.only(left: 32, right: 32),
                        child: new Column(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new SizedBox(height: 20),
                            new Text("swipe up", style: TextStyle(color: Colors.cyan, fontSize: 17),),
                            new SizedBox(height: 20),
                            new Text("There is a conflict in the dating of Tablet V "
                                "of the Standard Babylonian Gilgamesh Epic. The "
                                "Suaymaniyah Museum dates it to 2000-1500 BC, but "
                                "dissenting scholars put it closer to the neo-Babylonian "
                                "period. Its most significant contribution is in its "
                                "depiction of the events experienced by Gilgamesh and Enkidu "
                                "in the Cedar Forest. These descriptions include "
                                "previously unknown characterizations of Humbaba as "
                                "moreman than monster. Furthermore, the tables offers a more "
                                "advanced emotional depiction of all the characters involved "
                                "in the conflict. It also presents a deeper moral "
                                "conflict within Enkidu and Gilgamesh in their decision "
                                "to execute Humbaba. A complete translation of the tablet "
                                "can be found here.",
                              style: TextStyle(color: Colors.white, fontSize: 17),),
                            new SizedBox(height: 20,),
                            new Text("Reference: T.1447", style: TextStyle(color: Colors.white, fontSize: 17),
                              textAlign: TextAlign.right,),
                            new SizedBox(height: 20,),
                            new Text("credit: Abdusamad, Rania M.", style: TextStyle(color: Colors.white, fontSize: 17),
                              textAlign: TextAlign.right,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    final scaffold = Scaffold.of(context);
    final SnackBarContent = new SnackBar(
        content: Text('Saved to collection'),
        duration: const Duration(seconds: 2),
        action: new SnackBarAction(
            label: "Undo",
            textColor: Colors.cyan,
            onPressed: () {
              // Undo change
            }
        ));
    scaffold.showSnackBar(SnackBarContent);
  }
}
