import 'package:flutter/material.dart';
import 'package:flutter_navigator_1/navigation.dart';
import 'package:flutter_navigator_1/secondPage.dart';
import 'package:flutter_navigator_1/thirdPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: MyHomePage.pageName,
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  static String pageName = '/';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.of(context)
        .pushNamed(SecondPage.pageName, arguments: 'Third Page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Second Page',
          child: const Icon(Icons.add),
        ));
  }
}


/**
 * 
 *  FloatingActionButton.small(onPressed: _incrementCounter)
      ,FloatingActionButton.large(onPressed: () => Navigator.of(context).pushNamed(SecondPage.pageName),)]
    
 */