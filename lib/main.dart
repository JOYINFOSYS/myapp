
import 'package:flutter/material.dart';
import 'package:myapp/screen2.dart';

void main() {
  runApp(MyFirstApp());

  List<String> users = [
        "joy",
        "joy1",
        "joy2",

  ];


}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home: screen2(),
    );
  }
}

String hello =
    "Hello World sdfhjs dfgd fgfg dfsdf asdsad ";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        leading: Icon(Icons.menu,color:Colors.white,) ,
        title: Text("title",style: TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.add_a_photo),
          Icon(Icons.add_a_photo),
          Icon(Icons.add_a_photo),
          Icon(Icons.add_a_photo),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
        Text(
          hello,
          style: const TextStyle(
              color: Colors.green, fontSize: 24, fontWeight: FontWeight.w700),
          textAlign: TextAlign.left,
        ),
        
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.red,width: 5),
            color: Colors.green.shade900,
          ),
        
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.symmetric(vertical:16, horizontal:8),
          height: 100,
          width: double.infinity,
        
          child: Text(hello,style: const TextStyle(
            color: Colors.white,),)
        
        ),
        
        Icon(Icons.add_circle,size: 100,color: Colors.blue,),
        Image.network("https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/378321718_3360639080915538_742252125365277294_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=MENzLLoo51IAX8_76Eg&_nc_ht=scontent.fdac24-1.fna&oh=00_AfChysCJv6QnwLEByEHjAQKrRtUwWExQo28JHkO5OD15Eg&oe=65A60563",height: 100,),
        ClipOval(child: Image.asset("assets/images/1.jpg",height: 100,)),
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset("assets/images/1.jpg",height: 100,)),
        
                ],
              ),
      ),
    );
  }
}
