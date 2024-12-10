import 'package:flutter/material.dart';
import 'package:flutter_learning/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  String name = '';
    final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
                hintText: '名前',
              ),
              onChanged: (text) {
                // TODO: ここで取得したtextを使う
                name = text;
              },
            ),
            TextField(
                decoration: InputDecoration(
                hintText: '趣味',
              ),
            ),
            OutlinedButton(
              child: Text('新規登録'),
              onPressed: () {
                final hobbyText = myController.text;
              },
            ),
          ]
      ),
    ),
    );
  }
}
