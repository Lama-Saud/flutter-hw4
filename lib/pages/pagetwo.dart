import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffc000),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Section1(),
          Text(
            "I want to learn",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
          ),
          SizedBox(
            height: 5,
          ),
          ContriesList(),
        ],
      ),
    );
  }
}

class ContriesList extends StatelessWidget {
  const ContriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Colors.white),
        child: Column(
          children: [
            SingleCountry(country: 'CHINESE (SIMPLIFIED)', icon: Icons.circle),
            const Divider(
              color: Color.fromARGB(255, 213, 211, 211),
            ),

            SingleCountry(country: "DANISH", icon: Icons.circle),
            const Divider(
              color: Color.fromARGB(255, 213, 211, 211),
            ),
            SingleCountry(country: 'DUTCH', icon: Icons.circle),
            const Divider(
              color: Color.fromARGB(255, 213, 211, 211),
            ),
            SingleCountry(country: 'FRENCH', icon: Icons.circle),
            const Divider(
              color: Color.fromARGB(255, 213, 211, 211),
            ),
            SingleCountry(country: 'GERMAN', icon: Icons.circle),
            const SizedBox(
              height: 10,
            ),

            /// choose your level in GERMINI ---------------
            Column(
              children: [
                const Text(
                  "Choose your level",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 110,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color(0xFFffc000)),
                      child: const Text(
                        "Brginner",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 110,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color(0xFFffc000)),
                      child: const Text(
                        "Intermediate",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //------------------------------------------------------------------------------
            const Divider(
              color: Color.fromARGB(255, 213, 211, 211),
            ),
            SingleCountry(country: 'ICELANDIC', icon: Icons.circle),

            const Divider(
              color: Color.fromARGB(255, 213, 211, 211),
            ),
            SingleCountry(country: 'ITALIAN', icon: Icons.circle),
            const Divider(
              color: Color.fromARGB(255, 213, 211, 211),
            ),
            SingleCountry(country: 'JAPANESE', icon: Icons.circle),
            const Divider(
              color: Color.fromARGB(255, 213, 211, 211),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleCountry extends StatelessWidget {
  String country;
  IconData icon;

  SingleCountry({
    Key? key,
    required this.icon,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(
          width: 10,
        ),
        // Icon(Icons.circle),
        Text(
          country,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ),
      ],
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////
class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "I speak",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFF2b3648),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          //container of Row
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.circle),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "ENGLISH (UK)",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromARGB(255, 174, 184, 195),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
