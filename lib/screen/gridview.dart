import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
   GridViewDemo({super.key});

   // Build method for the widget
   @override
   Widget build(BuildContext context) {

     // Define a list of image data using the ImageData class
     List<ImageData> imageDataList = [
       ImageData(
         imagePath: "assets/images/9.jpeg",
         name: "Product name",
         description: "500tk.",
       ),
       ImageData(
         imagePath: "assets/images/3.jpeg",
         name: "Product name",
         description: "500tk.",
       ),
       ImageData(
         imagePath: "assets/images/4.jpeg",
         name: "Product name",
         description: "500tk.",
       ),
       ImageData(
         imagePath: "assets/images/7.jpg",
         name: "Product name",
         description: "500tk.",
       ),    ImageData(
         imagePath: "assets/images/8.jpg",
         name: "Product name",
         description: "500tk.",
       ),
       ImageData(
         imagePath: "assets/images/10.jpeg",
         name: "Product name",
         description: "500tk.",
       ),
       ImageData(
         imagePath: "assets/images/11.jpeg",
         name: "Product name",
         description: "500tk.",
       ),


       // add more images here...
     ];

     // Build the widget tree with a Scaffold and a GridView
     return  Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.green.shade800,
         title: Text("Assignment 01",style: TextStyle(color: Colors.white),),
       ),
       endDrawer: Drawer(
         child: ListView(
           children: [

             DrawerHeader(
                 padding: EdgeInsets.zero,
                 margin: EdgeInsets.zero,
                 child: Column(
                   children: [

                     ClipRRect(
                         borderRadius: BorderRadius.all(Radius.circular(20)),
                         child: Image.asset("assets/images/1.jpg",height: 100,)),
                     Text("ABDUR RAHMAN JOY"),
                     Text(
                       "Apps developer", style: TextStyle(fontSize: 15),),






                   ],
                 )),

             DrawerHeader(
                 padding: EdgeInsets.zero,
                 margin: EdgeInsets.zero,
                 child: Column(
                   children: [

                     Text(
                       "A highly motivated software professional with comprehensive knowledge of software techniques, and good experience of existing software applications or IT related activities", style: TextStyle(fontSize: 15),),

                   ],
                 )),



           ],
         ),
       ),
       body: GridView(
         padding: const EdgeInsets.all(16.0),
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           childAspectRatio: 0.8,
         ),
         children: imageDataList.map((imageData) {
           return Container(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [

                 SizedBox(child: Image.asset(imageData.imagePath,height: 100,)),
                 const SizedBox(height: 8.0),
                 Text(imageData.name),
                 Text(imageData.description),
               ],
             ),
           );
         }).toList(),
       ),
     );
   }
}

// Define a data class for the image data
class ImageData {
  final String imagePath;
  final String name;
  final String description;

  // Constructor for the class
  ImageData({
    required this.imagePath,
    required this.name,
    required this.description,
  });
}