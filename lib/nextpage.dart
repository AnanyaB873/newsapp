import 'package:flutter/material.dart';
class nextpage extends StatefulWidget {
  const nextpage({Key? key}) : super(key: key);

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/006/299/370/original/world-breaking-news-digital-earth-hud-rotating-globe-rotating-free-video.jpg'),fit:BoxFit.cover ),
            ),
          ),
          Container(
            child: Text('MacRumors',style: TextStyle(fontSize: 20),),
            decoration: BoxDecoration(
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
                color: Colors.brown
            ),
          ),
        ],
      ),
    );
  }
}
