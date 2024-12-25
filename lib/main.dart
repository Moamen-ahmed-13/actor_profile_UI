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
      debugShowCheckedModeBanner: false,
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
        backgroundColor: Colors.black,
        body: Stack(children: [
          CustomScrollView(slivers: [
            SliverAppBar(
              expandedHeight: 450,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/emma.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              floating: false,
              pinned: true,

            ),
            
          ])
        ]));
  }
}
