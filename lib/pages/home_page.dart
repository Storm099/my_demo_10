import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Messages"),
        centerTitle: true,
      ),

      body: ListView(
          children: [
            _itemList(img: "assets/images/per1.jpg",name: "Julia",time: "20:12",msg: "How a u doin today my dear?"),
            _itemList(img: "assets/images/per2.png",name: "Laurent",time: "20:02",msg: "How about meeting tomoorrow?"),
            _itemList(img: "assets/images/per3.jpg",name: "Joe",time: "19:23",msg: "Flutter just realize 2.0 today?"),
            _itemList(img: "assets/images/per4.jpg",name: "Mark",time: "10:12",msg: "It totally makes sense to get."),

            _itemList(img: "assets/images/per1.jpg",name: "Julia",time: "20:12",msg: "How a u doin today my dear?"),
            _itemList(img: "assets/images/per2.png",name: "Laurent",time: "20:02",msg: "How about meeting tomoorrow?"),
            _itemList(img: "assets/images/per3.jpg",name: "Joe",time: "19:23",msg: "Flutter just realize 2.0 today?"),
            _itemList(img: "assets/images/per4.jpg",name: "Mark",time: "10:12",msg: "It totally makes sense to get."),

            _itemList(img: "assets/images/per1.jpg",name: "Julia",time: "20:12",msg: "How a u doin today my dear?"),
            _itemList(img: "assets/images/per2.png",name: "Laurent",time: "20:02",msg: "How about meeting tomoorrow?"),
            _itemList(img: "assets/images/per3.jpg",name: "Joe",time: "19:23",msg: "Flutter just realize 2.0 today?"),
            _itemList(img: "assets/images/per4.jpg",name: "Mark",time: "10:12",msg: "It totally makes sense to get."),

            _itemList(img: "assets/images/per1.jpg",name: "Julia",time: "20:12",msg: "How a u doin today my dear?"),
            _itemList(img: "assets/images/per2.png",name: "Laurent",time: "20:02",msg: "How about meeting tomoorrow?"),
            _itemList(img: "assets/images/per3.jpg",name: "Joe",time: "19:23",msg: "Flutter just realize 2.0 today?"),
            _itemList(img: "assets/images/per4.jpg",name: "Mark",time: "10:12",msg: "It totally makes sense to get."),
          ],
      ),

    );
  }
}
Widget _itemList({img,name,time,msg}){

  return Container(
    height: 80,
    color: Colors.white,
    child: Row(
      children: [

        Expanded(
          flex: 2,
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              )
            ),
          ),
        ),

        Expanded(
          flex: 8,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(name,style: TextStyle(fontSize: 22),),
                      SizedBox(width: 25,),
                      Text(time),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Text("$msg"),


              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Text(">"),
          ),
        ),

      ],
    ),
  );

}
