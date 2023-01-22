import 'package:flutter/material.dart';

class PageSix extends StatelessWidget {
  const PageSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 76, 218, 206),
        elevation: 0,
        leading: const Icon(
          Icons.close,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),

          const Text(
            "Identify the pattern",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            //textAlign: TextAlign.center,
          ),
          const Text("Asking Yes/No Questions"),
          const SizedBox(
            height: 20,
          ),
          const Text("Tap to reveal the pattern"),

          //-------------------------------------------------------------
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("du startest mit Duetsch"),
                  Text("you're starting with German"),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 20,
                  ),
                  Text("------------------------"),
                  Text("are you starting with German"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("det kase stinkt nach Socken"),
                  Text("the cheese stinks like socks"),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.arrow_downward,
                    size: 20,
                  ),
                  Text("------------------------"),
                  Text("does the cheese stinkt like socks"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
