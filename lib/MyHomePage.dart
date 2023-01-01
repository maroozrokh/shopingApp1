import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulBuilder {
  const MyHomePage({super.key});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {

  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(     
        title: Text(widget.title),
      ),
      body: Center(     
        child: Column(  
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text('hi'
              ,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
          child: const Icon(Icons.add),
      ), 
    );
  }
}
