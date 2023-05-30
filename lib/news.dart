import 'package:flutter/material.dart';
import 'package:newsapp/nextpage.dart';
class newsapp extends StatefulWidget {
  const newsapp({Key? key}) : super(key: key);

  @override
  State<newsapp> createState() => _newsappState();
}

class _newsappState extends State<newsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NEWS APP'
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>nextpage()));
                },
                child: Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                        color: Colors.white,blurRadius: 3.0,
                      )]),
                  child: Column(
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
                ),
              );
            }));
  }
}


