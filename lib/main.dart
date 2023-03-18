import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicApp(),
    );
  }
}

class MusicApp extends StatefulWidget {
  @override
  _MusicAppState createState() => _MusicAppState();
}
class _MusicAppState extends State<MusicApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue[800],
              Colors.blue[200],
            ]),
        ),
        child: Padding(
          padding: EdgeInsets.only(
              top: 48.0
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Music Beats', style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                   ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text('Listen to your favourite music ', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                
                Center(
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      image: DecorationImage(
                        image: AssetImage('assets/music.png'),

                      )
                    ),
                  ),
                ),

                SizedBox(
                  height: 18.0,
                ),
                Center(
                  child: Text(
                    'Zayn Malik', style: TextStyle(
                    color: Colors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                ),

                SizedBox(
                  height: 30.0,
                ),

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize : 45.0,
                              color: Colors.black,
                              onPressed: () {},
                              icon: Icon(
                              Icons.skip_previous,
                            ),
                           ),

                            IconButton(
                              iconSize : 62.0,
                              color: Colors.black,
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow,
                              ),
                            ),

                            IconButton(
                              iconSize : 45.0,
                              color: Colors.black,
                              onPressed: () {},
                              icon: Icon(
                                Icons.skip_next,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}