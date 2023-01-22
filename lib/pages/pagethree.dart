import 'package:flutter/material.dart';
import 'package:hw_4/pages/pagefour.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

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
            const Center(
              child: SizedBox(
                width: 50,
                height: 50,
                //child: Image.asset("assets/gg.png"),
                child: Icon(
                  Icons.circle,
                  size: 50,
                ),
              ),
            ),
            const Text(
              "German",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
            ),
            const Text(
              "Beginner",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10),
            ),
            /////////////////////////////////////////////////////////////
            const SizedBox(
              height: 20,
            ),
            RegButton(
              text: "Sign up with Facebook",
              icon: Icons.facebook,
              color: const Color(0xFF2b57c2),
              textColor: Colors.white,
              iconColor: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            RegButton(
              text: "Sign up with Google",
              icon: Icons.account_circle,
              color: Colors.white,
              textColor: const Color(0xFF2b3648),
              iconColor: const Color(0xFF2b3648),
            ),
            const SizedBox(
              height: 20,
            ),

            InkWell(
              child: RegButton(
                text: "Sign up with Email",
                icon: Icons.email,
                textColor: Colors.white,
                color: const Color(0xFF2b3648),
                iconColor: Colors.white,
              ),
            ),

            /////////////////////////////////
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.check_box,
                    color: Color(0xFF2b3648),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "I would like to receive special offers by email",
                    style: TextStyle(fontSize: 11),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RegButton extends StatelessWidget {
  IconData icon;
  String text;
  Color color;
  Color textColor;
  Color iconColor;

  RegButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
    required this.textColor,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        //color: color,
      ),
      child: InkWell(
        onTap: (() => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PageFour(),
              ),
            )),
        child: Container(
          padding: const EdgeInsets.only(left: 16),
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            color: color,
          ),
          child: SizedBox(
            width: 300,
            height: 20,
            child: Row(
              children: [
                Icon(
                  icon,
                  color: iconColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
