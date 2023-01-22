import 'package:flutter/material.dart';
import 'package:hw_4/pages/pagethree.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffc000),
      body: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset("assets/memrise.png"),
              ),
            ),
            const Text(
              "Learn a language. Meet the world",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF2b3648),
              ),
              textAlign: TextAlign.center,
            ),
            Column(
              children: [
                InkWell(
                  onTap: (() => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PageThree(),
                        ),
                      )),
                  child: Container(
                    width: double.infinity,
                    height: 34,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Color(0xFF2b3648)),
                    child: const SizedBox(
                      width: 300,
                      height: 20,
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 34,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white),
                  child: const SizedBox(
                    width: 300,
                    height: 20,
                    child: Center(
                      child: Text(
                        "I have an account",
                        style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2b3648), fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
