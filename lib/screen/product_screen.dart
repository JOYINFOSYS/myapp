import 'package:flutter/material.dart';
import 'package:myapp/screen/user_list_screen.dart';

class ProductScreen extends StatelessWidget {
  final String title;
  const ProductScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Screen"),
      ),
      body: Center(child:Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },child: const Text("Go back"),),
          ElevatedButton(onPressed: (){
            //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => UserListScreen() ), (route) => false);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserListScreen() ));
          },child: const Text("Next"),),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title),
            ),
          )
        ],
      ),),
    );
  }
}
