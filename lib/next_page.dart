
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget{
  const NextPage(this.name, {super.key});//ネクストページに来るときはnameを入れるというルールを作る
  final String name;//値を受け取るための変数を作る
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
        child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(name),
          Center(
            child:OutlinedButton(
              child:const Text("戻る"),
              onPressed:(){
                Navigator.pop(context);
              }
            )
          ),
        ],
        )

      )
    );
}
}