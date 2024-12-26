import 'package:day_4/fade_animation.dart';
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
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            slivers: [
              SliverAppBar(
                pinned: true,
                backgroundColor: Colors.black,
                expandedHeight: 450,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/emma.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          colors: [
                            Colors.black.withValues(alpha: .9),
                            Colors.black.withValues(alpha: .3),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FadeAnimation(
                              1,
                              const Text(
                                "Emma Watson",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            FadeAnimation(
                              1.2,
                              Row(
                                children: [
                                  const Text(
                                    "60 Videos",
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  const Text(
                                    "2.5M Subscribers",
                                    style: TextStyle(
                                      color: Colors.white38,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FadeAnimation(
                            1.4,
                            Text(
                              'Emma Charlotte Duerre Watson was born in Paris, France, to British parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended the Dragon School.',
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          FadeAnimation(
                            1.6,
                            Text(
                              'Born',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          FadeAnimation(
                            1.6,
                            Text(
                              'April 15, 1990, Paris, France',
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          FadeAnimation(
                            1.8,
                            Text(
                              'Nationality',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          FadeAnimation(
                            1.8,
                            Text(
                              'British',
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          Text(
                            'Videos',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                makeVideo(image: "assets/images/emma-1.jpg"),
                                makeVideo(image: "assets/images/emma-2.jpg"),
                                makeVideo(image: "assets/images/emma-3.jpg"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned.fill(
            bottom: 15,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 120,
                    vertical: 10,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Follow",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget makeVideo({image}) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withValues(alpha: .9),
              Colors.black.withValues(alpha: .3),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 70,
          ),
        ),
      ),
    );
  }
}
