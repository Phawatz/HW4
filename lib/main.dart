import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chiang Mai',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Chiang Mai'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => ChiangMai();
}

class ChiangMai extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading:
            const IconButton(onPressed: null, icon: Icon(Icons.arrow_back_ios)),
        title: const Center(
          child: Text("Chaing Mai"),
        ),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.output_rounded)),
          IconButton(onPressed: null, icon: Icon(Icons.favorite)),
        ],
      ),
      body: Column(children: [
        Image.asset(
          "assets/images/7cff0cd8.jpg",
          height: 100,
          width: 200,
          fit: BoxFit.fitWidth,
        ),
        const Expanded(
          child: Text(
            "UNSEGO Sustainable Travel Pledge",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const Expanded(child: Text("Shagri-La Chiang Mai")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.grey),
            Icon(Icons.star, color: Colors.grey),
            Icon(Icons.star, color: Colors.grey),
            Icon(Icons.star, color: Colors.grey),
            Icon(Icons.star, color: Colors.grey)
          ],
        ),
        const Expanded(
            child: Text(
                "Luxury hotel with free water park, near \nChiang Mai Night Bazaar")),
        const Expanded(child: Text("9.0/10 Superb")),
        const Expanded(
            child: Text("1000 verified Hotels.com guest reviews",
                style: TextStyle(color: Colors.grey))),
        const Expanded(
            child: Text("See all 100 reviews >",
                style: TextStyle(color: Colors.blue))),
        const Expanded(child: Text("Popular amenities")),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.wifi),
                label: Text("Free wifi")),
            TextButton.icon(
                onPressed: null, icon: Icon(Icons.pool), label: Text("Pool")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.ac_unit),
                label: Text("Air conditioning")),
            TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.directions_car),
                label: Text("Free parking")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.fitness_center),
                label: Text("Gym")),
            TextButton.icon(
                onPressed: null,
                icon: Icon(Icons.thermostat),
                label: Text("Refrigerator"))
          ],
        ),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              child: MaterialButton(
                minWidth: 280,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45)),
                color: Color(0xff99CCFF),
                child: const Text(
                  "Select a room",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
