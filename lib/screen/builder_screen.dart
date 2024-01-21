import 'package:flutter/material.dart';

class BuilderScree extends StatelessWidget {
  BuilderScree({super.key});

  List<String> names=[
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Sunday",

  ];
  List<String> urls=[
    "https://purepng.com/public/uploads/large/purepng.com-photos-iconsymbolsiconsapple-iosiosios-8-iconsios-8-721522596102asedt.png",
    "https://purepng.com/public/uploads/large/purepng.com-photos-iconsymbolsiconsapple-iosiosios-8-iconsios-8-721522596102asedt.png",
    "https://purepng.com/public/uploads/large/purepng.com-photos-iconsymbolsiconsapple-iosiosios-8-iconsios-8-721522596102asedt.png",
    "https://purepng.com/public/uploads/large/purepng.com-photos-iconsymbolsiconsapple-iosiosios-8-iconsios-8-721522596102asedt.png",
    "https://purepng.com/public/uploads/large/purepng.com-photos-iconsymbolsiconsapple-iosiosios-8-iconsios-8-721522596102asedt.png",


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Data"),
            Padding(
        
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                shrinkWrap: true,
                  primary: false,
                  itemCount: urls.length,
                  itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.network(urls[index]),
                      tileColor: Colors.green.shade900,
                        title:Text(names[index], style: TextStyle(color: Colors.white),)),
                  );
                  }, separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 4,);
              },
                  ),
            ),
          ],
        ),
      ),


    );
  }
}
