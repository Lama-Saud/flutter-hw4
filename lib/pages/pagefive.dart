import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfbfaf5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF2d3949),
        title: Row(
          children: const [
            Icon(
              Icons.account_circle,
              color: Colors.amber,
            ),
            Text("mobbindcms4"),
          ],
        ),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        actions: [
          Center(
            child: Container(
              decoration: const BoxDecoration(color: Colors.grey),
              child: const Padding(
                padding: EdgeInsets.only(top: 6.0, bottom: 6.0, left: 20, right: 20),
                child: Text(
                  "SAVE MEM",
                  style: TextStyle(color: Colors.white30),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "hallo",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("hi"),
              ],
            ),
            const SizedBox(height: 10),
            const Icon(
              Icons.volume_up,
              color: Color.fromARGB(255, 112, 178, 232),
            ),
            const SizedBox(height: 20),
            Container(
              height: 250,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(blurRadius: 3, color: Colors.grey),
              ]),
              child: Container(
                color: Colors.white,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Type something memorable",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
