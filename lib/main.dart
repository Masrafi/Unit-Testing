import 'package:flutter/material.dart';
import 'package:unit_testing/counter.dart';

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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('widget.title'),
      ),
      body: Center(
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              Counter().value.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
            children: [
              GestureDetector(
              child: const Text('Increase'),
              onTap: (){
                Counter().increment();
              },
              ),
              GestureDetector(
              child: const Text('Decrease'),
              onTap: (){
                Counter().decrement();
              },
              )
            ],
            )
          ],
        ),
      ),
    );
  }
}
