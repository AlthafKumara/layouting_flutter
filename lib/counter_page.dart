import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void Increament() {
    setState(() {
      counter++;
    });
  }

  void Decreament() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          "COUNTER PAGE",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter", style: const TextStyle(fontSize: 50)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Decreament();
                  },
                  icon: Icon(Icons.remove),
                  color: Colors.amber,
                ),
                IconButton(
                  style: IconButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Increament();
                  },
                  icon: Icon(Icons.add),
                  color: Colors.amber,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
