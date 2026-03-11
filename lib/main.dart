import 'package:flutter/material.dart';

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
      home: const AppPage(),
    );
  }
}

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My First App',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.orange[200],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.lightBlue[100],
            child: Image.network(
              'https://picsum.photos/200',
              fit: BoxFit.cover,
              width: 500,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 10.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.pink.shade50,
            child: Text('What image is that?'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow[200],
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(Icons.food_bank, color: Colors.black),
                    Text('Food'),
                  ],
                ),

                Column(
                  children: [
                    Icon(Icons.umbrella_rounded, color: Colors.black),
                    Text('Scenery'),
                  ],
                ),

                Column(
                  children: [
                    Icon(Icons.people_alt_outlined, color: Colors.black),
                    Text('People'),
                  ],
                ),
              ],
            ),
          ),
        ],

      ),
    );
  }
}

  