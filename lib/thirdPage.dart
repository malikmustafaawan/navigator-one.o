import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
   static String pageName ='Third Pge';

  const ThirdPage({super.key, required String data});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  late String data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Third Page'
      
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: 
            const Text('Exit')
            )
          ],
        ),
      ),
    );
  }
}