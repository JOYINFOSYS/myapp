import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [

                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Image.network(
                          "https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/378321718_3360639080915538_742252125365277294_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=MENzLLoo51IAX8_76Eg&_nc_ht=scontent.fdac24-1.fna&oh=00_AfChysCJv6QnwLEByEHjAQKrRtUwWExQo28JHkO5OD15Eg&oe=65A60563",
                          height: 100, errorBuilder: (_, __, ___) {
                          return Icon(Icons.image, size: 50);
                        },)),
                    Text("ABDUR RAHMAN JOY"),
                    Text(
                      "jspaonline@gmail.com", style: TextStyle(fontSize: 10),),


                  ],
                )),
            Column(
              children: [
                ListTile(
                  tileColor: Colors.green,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),


              ],
            )


          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: Column(
                  children: [

                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: Image.network(
                          "https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/378321718_3360639080915538_742252125365277294_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=MENzLLoo51IAX8_76Eg&_nc_ht=scontent.fdac24-1.fna&oh=00_AfChysCJv6QnwLEByEHjAQKrRtUwWExQo28JHkO5OD15Eg&oe=65A60563",
                          height: 100, errorBuilder: (_, __, ___) {
                          return Icon(Icons.image, size: 50);
                        },)),
                    Text("ABDUR RAHMAN JOY"),
                    Text(
                      "jspaonline@gmail.com", style: TextStyle(fontSize: 10),),


                  ],
                )),
            Column(
              children: [
                ListTile(
                  tileColor: Colors.green,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                  subtitle: Text("Goto Home"),
                  trailing: Icon(Icons.arrow_forward_rounded),
                ),


              ],
            )


          ],
        ),
      ),
      appBar: AppBar(


        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        child: Center(

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  maxLines: null,
                  style: GoogleFonts.poppins(),
                  keyboardType: TextInputType.text,

                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    prefixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 5)
                    ),
                    //hintText: "Enter text",
                    labelText: "Enter Text"
                  ),
                ),

                Text("ABDUR RAHMAN JOY", style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w900),),
                SizedBox(
                  height: 50,
                  width: double.infinity,

                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {}, child: Text("Button")),
                ),
                TextButton(onPressed: () {}, child: Text("TextButton")),
                //Text button
                OutlinedButton(onPressed: () {
                  DialogBox(context);
                }, child: Text("OutlineButton")),

                GestureDetector(
                  onTap: () {
                    DialogBox(context);
                  },
                  child: Card(
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Hello"),
                    ),

                  ),
                )
                //Outline button


              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade900,
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,

              context: context,
              builder: (context){
            return Container(
              height: 800,
            );
          });
        },
        child: Icon(Icons.add),),


    );
  }

  DialogBox(BuildContext context) {
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Title"),
        content: Text("Welcome to my App"),
        actions: [
          OutlinedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("Ok")),
          OutlinedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("Cancel")),

        ],

      );
    });
  }

}

