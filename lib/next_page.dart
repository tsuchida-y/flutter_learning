
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
@override
Widget build(BuildContext context){
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("次の画面"),
      ),
      body: Container(
        height:double.infinity,
        color:Colors.red,
      ),
    );
}
}