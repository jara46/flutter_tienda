import 'package:flutter/material.dart';

import 'counter.dart';
import 'image_carous.dart';

void main() {
  runApp(FirstScreen());
  
}


class FirstScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstScreen();
  }
}


class _FirstScreen extends State<FirstScreen> {
  bool _isFavorited = true;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.pink[100],
          leading: Row(
            children: <Widget>[
              SizedBox(
                width: 5.0,
              ),
              IconButton(
                color: Colors.black,
                icon: const Icon(
                  Icons.arrow_back,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 20.0,
            ),
          ],
        ),
        backgroundColor: Colors.pink[100],
        body: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                CarouselWithIndicatorDemo(),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(50.0),
                        topRight: const Radius.circular(50.0),
                      )),
                  height: 600,
                  width: 500,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            '',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text('piezas'),
                          SizedBox(
                            height: 20.0,
                          ),
                          CounterDesign(),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            'Descripcion',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            'sakurazaka46 es un grupp musical de japon que nacio en el 2016 con el nombre de keyakizaka46'
                            "pero en el 2020 decidieron cambiar de nombre debutando como sakurazaka durannte su ultimo concierto "
                            "llamado last live donde el cambio de nombre fue divido a que decidieron tomar un nuevo enfoque",
                            style:
                                TextStyle(letterSpacing: 2.0, fontSize: 15.0),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Row(
                            children: <Widget>[
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  side: BorderSide(color: Colors.pink),
                                ),
                                height: 70.0,
                                 minWidth: 260.0,
                                child:ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                     primary: Colors.pink[100],
                                       elevation: 0.0,),
                                  onPressed: () {  },
                                  child: IconButton(
                                      icon: _isFavorited
                                          ? Icon(
                                              Icons.favorite_border,
                                              color: Color.fromARGB(255, 0, 0, 0),
                                            )
                                          : Icon(
                                              Icons.favorite,
                                              color: const Color.fromARGB(255, 17, 17, 17),
                                            ), onPressed: () {},)
                                 
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0)),
                                height: 70.0,
                                minWidth: 260.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                 primary: Colors.pink[100],
                                  elevation: 0.0,),
                                  onPressed: () {},
                                  child: Text(
                                    'sakurazaka',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                               SizedBox(
                                width: 10.0,
                              ),
                              ButtonTheme(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                height: 50.0,
                                minWidth: 200.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                 primary: Colors.green[200],
                                  elevation: 0.0,),
                                  onPressed: () {},
                                  child: Text(
                                    'keyakizaka',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}