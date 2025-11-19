import 'package:flutter/material.dart';

class NestedLayout extends StatelessWidget {
  const NestedLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text("Nested Layout", style: TextStyle(fontSize: 20)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,

              backgroundImage: AssetImage("assets/profile_photo.jpg"),
            ),
            SizedBox(height: 10),
            Text("Althaf Kumara", style: const TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 50),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/profile");
              },
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 10),
                  const Text("Detail Profile"),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 50),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/counter");
              },
              child: Row(
                children: [
                  Icon(Icons.label_important),
                  SizedBox(width: 10),
                  const Text("Pindah Ke Counter Page"),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 50),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/lifecycle");
              },
              child: Row(
                children: [
                  Icon(Icons.label_important),
                  SizedBox(width: 10),
                  const Text("Pindah Ke Lifecycle Page"),
                ],
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 50),
                backgroundColor: Colors.amber,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/product");
              },
              child: Row(
                children: [
                  Icon(Icons.shopping_basket),
                  SizedBox(width: 10),
                  const Text("Pindah Ke Detail Product"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
