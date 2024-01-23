import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/screen/product_screen.dart';
import 'package:myapp/screen/user_list_screen.dart';

class HomeScreen2 extends StatefulWidget {
   HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen 2"),
      ),

      body: Center(child:Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          HomeCategoryWidget(title: 'Product', iconData: Icons.account_circle, widget: Icon(Icons.add_a_photo,), onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => ProductScreen(title: 'title',) ));
          },),
          HomeCategoryWidget(title: 'User', iconData: Icons.account_circle, widget: Image.asset("assets/images/1.jpg"), onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => UserListScreen() ));

          }, ),

          FlutterSwitch(value: onOff, onToggle: (bool value){
            onOff = !onOff;
            setState(() {});
          }),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(title: 'From home screen',) ));
          },child: const Text("Go to next page"),),
        ],
      ),),
    );

  }
}

class HomeCategoryWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Widget widget;
  final Function onTap;

  const HomeCategoryWidget({
    super.key, required this.title, required this.iconData, required this.widget, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: 100,
    width: double.infinity,
    child: InkWell(
      onTap: (){
        onTap();
      },
      child: Card(
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(iconData,size: 32,),widget,
            Text(title,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w700),),
            const Icon(Icons.arrow_forward_rounded),
          ],
        ),

      ),
    ),
            );
  }
}
