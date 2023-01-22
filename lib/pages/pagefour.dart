import 'package:flutter/material.dart';
import 'package:hw_4/pages/pagetwo.dart';

class PageFour extends StatelessWidget {
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffc000),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Center(
              child: SizedBox(
                width: 150,
                height: 150,
                child: Image.asset("assets/memrise.png"),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            FirstFeild(
              hint: '"user@gmail.com"',
              title: 'Email',
            ),
            const SizedBox(
              height: 30,
            ),
            SecondFeild(
              title: "Password (minimun 6 characters)",
              hint: "Password",
            ),
            const SizedBox(
              height: 60,
            ),
            //button
            InkWell(
              onTap: (() => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PageTwo(),
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
                      "Create account",
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
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

class SecondFeild extends StatelessWidget {
  String title;
  String hint;
  //IconData icon;

  SecondFeild({
    required this.title,
    required this.hint,
    //required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Color(0xFF2b3648), fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                //width: double.infinity,
                height: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Text(
                        hint,
                        style: const TextStyle(color: Color(0xFFcfcfcf), fontSize: 12),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Icon(
                        Icons.remove_red_eye,
                        color: Color(0xFF72716d),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class FirstFeild extends StatelessWidget {
  String title;
  String hint;

  FirstFeild({
    required this.title,
    required this.hint,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(color: Color(0xFF2b3648), fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                //width: double.infinity,
                height: 40,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 10),
                  child: Text(
                    hint,
                    style: const TextStyle(color: Color(0xFFcfcfcf), fontSize: 12),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
