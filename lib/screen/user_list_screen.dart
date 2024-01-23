import 'package:flutter/material.dart';
import 'package:myapp/screen/home_screen02.dart';
import 'package:myapp/screen/product_screen.dart';

class UserListScreen extends StatelessWidget {
  const UserListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User list screen"),
      ),

      body: Center(child:ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen2() ));
      },child: const Text("Go to next page"),),),
    );

  }
}
