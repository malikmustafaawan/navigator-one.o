import 'package:flutter/material.dart';
import 'package:flutter_navigator_1/thirdPage.dart';

class SecondPage extends StatefulWidget {
  static String pageName = 'Second Page';

  const SecondPage({super.key, required String data});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late final String data;
  static String pageName = 'Second Page';
  void _incrementCounter() {
    Navigator.pushNamed(context, ThirdPage.pageName, arguments: 'third Page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Second Page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Exit'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Third Page',
        child: const Icon(Icons.add),
      ),
    );
  }
}
