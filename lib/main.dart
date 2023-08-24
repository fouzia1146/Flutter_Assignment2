import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                   primary: Colors.white,
                   backgroundColor: Colors.black,
                ),
                child:
                  Text('1', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('2', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('3', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                child:
                Text('+', style: TextStyle(fontSize: 40)),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('4', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('5', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('6', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                child:
                Text('-', style: TextStyle(fontSize: 40)),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('7', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('8', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('9', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                child:
                Text('*', style: TextStyle(fontSize: 40)),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('0', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child:
                Text('.', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                child:
                Text('=', style: TextStyle(fontSize: 40)),
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                child:
                Text('/', style: TextStyle(fontSize: 40)),
              ),
            ],
          ),
        ],
      )
      ),
    );
  }
}
